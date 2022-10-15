import 'package:flutter/material.dart';

class CheckDocScaler extends StatelessWidget {
  const CheckDocScaler({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 1440,
            height: 1024,
            child: Stack(
              clipBehavior: Clip.none,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
