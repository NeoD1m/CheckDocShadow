import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0, top: 747),
      width: 1440.px,
      height: 142.px,
      child: OutlinedButton(
        onPressed: () => context.go("/upload"),
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xFF89B933),
        ),
        child: Text(
          "Начать проверку",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
