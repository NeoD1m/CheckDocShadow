import 'package:flutter/material.dart';

/// TODO как хочешь делай аппбар, через встроенный appBar или через stack
class CheckDocAppBar extends StatelessWidget {
  const CheckDocAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 24, top: 16),
          child: Image.asset("assets/images/leading.png", width: 48, height: 36, fit: BoxFit.contain),
        ),
        Container(
          margin: EdgeInsets.only(left: 88, top: 26),
          child: Image.asset("assets/images/checkDOC.png", width: 101.78, height: 20),
        ),
      ],
    );
  }
}
