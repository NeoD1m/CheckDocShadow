import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
              margin: EdgeInsets.only(left: 24.px, top: 44.px),
              width: 98.px,
              height: 72.px,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/leading.png"))),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 792.px, top: 44.px),
              width: 525.px,
              height: 388.px,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/logo.png"), fit: BoxFit.fitWidth)),
            ),
          ),
        ],
      ),
    );
  }
}
