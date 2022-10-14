import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CheckDocScaler extends StatelessWidget {
  const CheckDocScaler({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100.w,
        height: 100.h,
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
