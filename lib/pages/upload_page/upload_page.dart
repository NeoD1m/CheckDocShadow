import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget{
    const UploadPage({Key? key}) : super(key: key);
    @override
    State<UploadPage> createState() => UploadPageState();
}

class UploadPageState extends State<UploadPage>{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                color: Colors.blue,
            ),
        );
    }
}