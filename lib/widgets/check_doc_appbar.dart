import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

/// TODO поменять png на svg
class CheckDocAppBar extends StatelessWidget {
  const CheckDocAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 24, top: 8),
      width: 190,
      height: 68,
      child: TextButton(
        onPressed: () => context.go("/"),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 0, top: 16 - 8),
              child: SvgPicture.asset(
                  'assets/images/logo.svg'), //Image.asset("assets/images/leading.png", width: 48, height: 36, fit: BoxFit.contain),
            ),
            Container(
              margin: const EdgeInsets.only(left: 88 - 24, top: 26 - 8),
              child: SvgPicture.asset('assets/images/checkDOC.svg'), //Image.asset("assets/images/checkDOC.png", width: 101.78, height: 20),
            ),
          ],
        ),
      ),
    );
  }
}
