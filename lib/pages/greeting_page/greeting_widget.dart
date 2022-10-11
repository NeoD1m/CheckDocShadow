import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 450,
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700),
              children: [
                TextSpan(text: "Приветствую, это чек"),
                TextSpan(text: "DOC", style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700, color: Color(0xFF3272C0))),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
        SizedBox(
          width: 500,
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              children: [
                TextSpan(text: "Проверяйте с помощью чек"),
                TextSpan(text: "DOC ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF3272C0))),
                TextSpan(text: "акутальность нормативных актов, просто и удобно"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
