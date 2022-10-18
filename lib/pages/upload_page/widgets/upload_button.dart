import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadButton extends StatelessWidget {
  UploadButton({Key? key}) : super(key: key);
  late DropzoneViewController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 534 + 39 + 35, top: 602 + 31 + 50),
      width: 186,
      height: 48,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: Color(0xFF3272C0).withOpacity(0.9),
            padding: EdgeInsets.zero),
        onPressed: () async {
          final events = await controller.pickFiles();
          if (events.isEmpty) return;
          uploadedFile(events.first);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Colors.white),
            SizedBox(
              width: 132,
              height: 24,
              child: Text(
                "загрузить файл",
                style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    color: Colors.white,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future uploadedFile(dynamic event) async {
    // this method is called when user drop the file in drop area in flutter

    final name = event.name;
    final mime = await controller.getFileMIME(event);
    final byte = await controller.getFileSize(event);
    final url = await controller.createFileUrl(event);

    print('Name : $name');
    print('Mime: $mime');

    print('Size : ${byte / (1024 * 1024)}');
    print('URL: $url');

    // update the data model with recent file uploaded
    final droppedFile =
        File_Data_Model(name: name, mime: mime, bytes: byte, url: url);

    //Update the UI
    // widget.onDroppedFile(droppedFile);
    // setState(() {
    //   highlight = false;
    // });
  }
}

class File_Data_Model {
  final String name;
  final String mime;
  final int bytes;
  final String url;

  File_Data_Model(
      {required this.name,
      required this.mime,
      required this.bytes,
      required this.url});

  String get size {
    final kb = bytes / 1024;
    final mb = kb / 1024;

    return mb > 1
        ? '${mb.toStringAsFixed(2)} MB'
        : '${kb.toStringAsFixed(2)} KB';
  }
}
