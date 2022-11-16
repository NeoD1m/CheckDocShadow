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
import 'package:flutter_dropzone/flutter_dropzone.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);
  @override
  State<UploadPage> createState() => UploadPageState();
}

// TODO добавить в url &task=x и если уже есть не создавать новый на сервере
class UploadPageState extends State<UploadPage> {
  late DropzoneViewController controller;
  // a variable just to update UI color when user hover or leave the drop zone
  bool highlight = false;

  // DEBUG
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: createTaskOnBackend(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          //TODO если в ответе прилетела ошибка, повторить запрос
          if ((snapshot.connectionState == ConnectionState.done && !snapshot.hasError) || isBackendDisabled) {
            return Stack(
              children: [
                DropzoneView(
                  // attach an configure the controller
                  onCreated: (controller) => this.controller = controller,
                  // call UploadedFile method when user drop the file
                  onDrop: UploadedFile,
                  // change UI when user hover file on dropzone
                  //onHover:() => setState(()=> highlight = true),
                  //onLeave: ()=> setState(()=>highlight = false),
                  onLoaded: () => print('Zone Loaded'),
                  onError: (err) => print('run when error found : $err'),
                ),
                // Slider(
                //   value: sliderValue,
                //   onChanged: (newValue) {
                //     setState(() {
                //       sliderValue = newValue.toInt().toDouble();
                //     });
                //   },
                //   divisions: 100,
                //   max: 100,
                // ),
                CheckDocScaler(
                  children: [
                    const CheckDocAppBar(),
                    const UploadBorder(),
                    const UploadBody(), // Перекрывал кнопку далее
                    const UploadTitleBar(),
                    const FileDrop(),
                    UploadButton(),
                    UploadStatusPopup(
                      progressPercent: sliderValue,
                      children: [
                        DocUploadStatus(
                          progressPercent: 15,
                          fileName: 'Мы надеемся, что название файла может быть немного короче, а не вот эти три строчки',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }
          return Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor));
        },
      ),
    );
  }

  Future UploadedFile(dynamic event) async {
    // this method is called when user drop the file in drop area in flutter

    final name = event.name;
    final mime = await controller.getFileMIME(event);
    final byte = await controller.getFileSize(event);
    final url = await controller.createFileUrl(event);

    final bytes = await controller.getFileData(event);

    print('Name : $name');
    print('Mime: $mime');

    print('Size : ${byte / (1024 * 1024)}');
    print('URL: $url');

    // update the data model with recent file uploaded
    final droppedFile = FileDataModel(name: name, mime: mime, bytes: byte, url: url);
    uploadFileToBackend(taskId: 1, filename: name, data: bytes);
  }
}

// dropZone => add new loadingWidget(fileData) => in loadingWidget start uploadFileToBackend => in loadingWidget display progress
class FileDataModel {
  final String name;
  final String mime;
  final int bytes;
  final String url;

  FileDataModel({required this.name, required this.mime, required this.bytes, required this.url});

  String get size {
    final kb = bytes / 1024;
    final mb = kb / 1024;

    return mb > 1 ? '${mb.toStringAsFixed(2)} MB' : '${kb.toStringAsFixed(2)} KB';
  }
}
