import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.only(left: 142, top: 109),
            width: 568,
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headlineLarge,
                children: [
                  const TextSpan(text: "Приветствую, это чек"),
                  TextSpan(
                    text: "DOC",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: const Color(0xFF3272C0)),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.only(left: 142, top: 287),
            width: 565,
            height: 81,
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  const TextSpan(text: "Проверяйте с помощью чек"),
                  TextSpan(
                    text: "DOC ",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: const Color(0xFF3272C0)),
                  ),
                  const TextSpan(text: "акутальность нормативных актов, просто и удобно"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}