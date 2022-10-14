import 'package:checkdoc/pages/upload_page/file_drop.dart';
import 'package:checkdoc/pages/upload_page/upload_body.dart';
import 'package:checkdoc/pages/upload_page/upload_button.dart';
import 'package:checkdoc/pages/upload_page/upload_title_bar.dart';
import 'package:checkdoc/widgets/check_doc_appbar.dart';
import 'package:checkdoc/widgets/checkdoc_scaler.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);
  @override
  State<UploadPage> createState() => UploadPageState();
}

class UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckDocScaler(
        children: [
          CheckDocAppBar(),
          UploadBody(), // Перекрывал кнопку далее
          UploadTitleBar(),
          FileDrop(),
          UploadButton(),
        ],
      ),
      // body: FutureBuilder(
      //   future: createTaskOnBackend(),
      //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       return Container(
      //         color: Colors.blue,
      //         child: Column(
      //           children: [
      //             Text(snapshot.data.toString()),
      //             ElevatedButton(
      //               onPressed: () => context.go("/date"),
      //               child: const Text("выбрать даты"),
      //             ),
      //           ],
      //         ),
      //       );
      //     }
      //     if (snapshot.connectionState != ConnectionState.done) {
      //       return CircularProgressIndicator();
      //     }
      //     return CircularProgressIndicator();
      //   },
      // ),
    );
  }
}
