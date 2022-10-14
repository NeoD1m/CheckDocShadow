import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(left: 142.px, top: 109.px),
            width: 568.px,
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
            margin: EdgeInsets.only(left: 142.px, top: 287.px),
            width: 565.px,
            height: 81.px,
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(text: "Проверяйте с помощью чек"),
                  TextSpan(
                    text: "DOC ",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: const Color(0xFF3272C0)),
                  ),
                  TextSpan(text: "акутальность нормативных актов, просто и удобно"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
