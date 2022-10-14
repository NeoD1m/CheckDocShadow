import 'package:checkdoc/widgets/check_doc_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/backend.dart';

class UploadPage extends StatefulWidget{
    const UploadPage({Key? key}) : super(key: key);
    @override
    State<UploadPage> createState() => UploadPageState();
}

class UploadPageState extends State<UploadPage>{
    @override
    Widget build(BuildContext context) {

        return Scaffold(
            appBar: CheckDocAppBar(),
            body: FutureBuilder(
                future: createTaskOnBackend(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done){
                      return Container(
                          color: Colors.blue,
                          child: Column(
                            children: [
                                Text(snapshot.data.toString()),
                              ElevatedButton(onPressed: () => context.go("/date"), child: const Text("выбрать даты"),),
                            ],
                          ),
                      );
                  }
                  if (snapshot.connectionState != ConnectionState.done) {
                      return CircularProgressIndicator();
                  }
                  return CircularProgressIndicator();
              },
            ),
        );
    }
}