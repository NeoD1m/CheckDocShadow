import 'package:flutter/cupertino.dart';

class StepTextWidget extends StatelessWidget{
    const StepTextWidget({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Column(
          children: [
            Text("Шаг 1"),
            Text("Выберите документ"),
            Text("Проверять действие НПА стало проще,\n просто загрузите документы, остальное сделаем Мы"),
          ],
        );
    }
}