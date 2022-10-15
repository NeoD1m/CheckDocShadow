import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 24, top: 44),
              width: 98,
              height: 72,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/leading.png"))),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 792, top: 44),
              width: 525,
              height: 388,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/logo.png"), fit: BoxFit.fitWidth)),
            ),
          ),
        ],
      ),
    );
  }
}
