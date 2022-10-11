import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 20, top: 30),
              width: 100,
              height: 100,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/leading.png"))),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(right: 100),
              width: 550,
              height: 550,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/logo.png"), fit: BoxFit.fitWidth)),
            ),
          ),
        ],
      ),
    );
  }
}
