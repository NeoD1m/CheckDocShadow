import 'package:checkdoc/pages/greeting_page/step_widget.dart';
import 'package:flutter/material.dart';

class StepRow extends StatelessWidget {
  const StepRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned(
          left: 142,
          child: StepWidget(
            stepNumber: 'Шаг1',
            bodyTitle: "Выберите документ",
            bodyText: "Проверять действие НПА стало проще, просто загрузите документы, остальное сделаем Мы",
          ),
        ),
        Positioned(
          left: 495,
          child: StepWidget(
            stepNumber: 'Шаг1',
            bodyTitle: "Выберите документ",
            bodyText: "Проверять действие НПА стало проще, просто загрузите документы, остальное сделаем Мы",
          ),
        ),
        Positioned(
          left: 853,
          child: StepWidget(
            stepNumber: 'Шаг1',
            bodyTitle: "Выберите документ",
            bodyText: "Проверять действие НПА стало проще, просто загрузите документы, остальное сделаем Мы",
          ),
        ),
        // StepWidget(
        //   stepTitle: "Шаг1",
        //   bodyTitle: "Выберите документ",
        //   bodyText: "Проверять действие НПА стало проще, просто загрузите документы, остальное сделаем Мы",
        // ),
        // StepWidget(
        //   stepTitle: "Шаг1",
        //   bodyTitle: "Выберите документ",
        //   bodyText: "Проверять действие НПА стало проще, просто загрузите документы, остальное сделаем Мы",
        // ),
      ],
    );
  }
}
