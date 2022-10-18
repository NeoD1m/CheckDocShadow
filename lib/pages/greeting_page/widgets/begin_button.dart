import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BeginButton extends StatelessWidget {
  const BeginButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, top: 747),
      width: 1440,
      height: 142,
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
