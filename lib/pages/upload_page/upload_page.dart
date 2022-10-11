import 'package:checkdoc/widgets/check_doc_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            body: Container(
                color: Colors.blue,
                child: ElevatedButton(onPressed: () => context.go("/date"), child: const Text("выбрать даты"),),
            ),
        );
    }
}