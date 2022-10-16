import 'package:checkdoc/pages/upload_page/file_drop.dart';
import 'package:checkdoc/pages/upload_page/upload_body.dart';
import 'package:checkdoc/pages/upload_page/upload_button.dart';
import 'package:checkdoc/pages/upload_page/upload_title_bar.dart';
import 'package:checkdoc/widgets/check_doc_appbar.dart';
import 'package:checkdoc/widgets/checkdoc_scaler.dart';
import 'package:checkdoc/widgets/upload_border.dart';
import 'package:flutter/material.dart';

import '../../utils/backend.dart';

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
          if (snapshot.connectionState == ConnectionState.done && !snapshot.hasError){
            return const CheckDocScaler(
                children: [
                  CheckDocAppBar(),
                  UploadBorder(),
                  UploadBody(), // Перекрывал кнопку далее
                  UploadTitleBar(),
                  FileDrop(),
                  UploadButton(),
                ]
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
