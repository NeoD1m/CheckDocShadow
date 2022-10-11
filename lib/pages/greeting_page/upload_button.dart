import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: OutlinedButton(
        onPressed: () => context.go("/upload"),
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xFF89B933),
        ),
        child: const Text(
          "Начать проверку",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
