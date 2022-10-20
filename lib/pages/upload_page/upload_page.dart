import 'package:checkdoc/constant.dart';
import 'package:checkdoc/pages/upload_page/widgets/doc_upload_status.dart';
import 'package:checkdoc/pages/upload_page/widgets/file_drop.dart';
import 'package:checkdoc/pages/upload_page/widgets/upload_body.dart';
import 'package:checkdoc/pages/upload_page/widgets/upload_button.dart';
import 'package:checkdoc/pages/upload_page/widgets/upload_status_popup.dart';
import 'package:checkdoc/pages/upload_page/widgets/upload_title_bar.dart';
import 'package:checkdoc/utils/backend.dart';
import 'package:checkdoc/widgets/check_doc_appbar.dart';
import 'package:checkdoc/widgets/checkdoc_scaler.dart';
import 'package:checkdoc/widgets/upload_border.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);
  @override
  State<UploadPage> createState() => UploadPageState();
}

// TODO добавить в url &task=x и если уже есть не создавать новый на сервере
class UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: createTaskOnBackend(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if ((snapshot.connectionState == ConnectionState.done && !snapshot.hasError) || isBackendDisabled) {
            return CheckDocScaler(
              children: [
                const CheckDocAppBar(),
                const UploadBorder(),
                const UploadBody(), // Перекрывал кнопку далее
                const UploadTitleBar(),
                const FileDrop(),
                UploadButton(),
                const UploadStatusPopup(
                  progressPercent: 70,
                  children: [
                    DocUploadStatus(
                      progressPercent: 15,
                      fileName: 'Мы надеемся, что название файла может быть немного короче, а не вот эти три строчки',
                    ),
                  ],
                ),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
