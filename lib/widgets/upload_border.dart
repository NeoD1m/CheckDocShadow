import 'package:flutter/material.dart';

class UploadBorder extends StatelessWidget {
  const UploadBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, top: 104),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.black)),
      width: 1392,
      height: 747,
    );
  }
}
