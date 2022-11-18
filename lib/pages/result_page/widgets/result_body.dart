import 'package:checkdoc/pages/result_page/widgets/result_card.dart';
import 'package:flutter/material.dart';

class ResultBody extends StatefulWidget {
  const ResultBody({Key? key}) : super(key: key);

  @override
  State<ResultBody> createState() => ResultBodyState();
}

class ResultBodyState extends State<ResultBody> {
  List<bool> expandedList = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 79, top: 208),
          child: ListView(
            children: const [
              ResultCard(
                fileName: 'Мы надеемся, что название файла может быть немного короче, а не вот эти три строчки',
                fileWeight: '150мб',
                fileDate: '02.02.2022, 17:45',
              ),
              ResultCard(
                fileName: 'Мы надеемся, что название файла может быть немного короче, а не вот эти три строчки',
                fileWeight: '150мб',
                fileDate: '02.02.2022, 17:45',
              ),
              ResultCard(
                fileName: 'Мы надеемся, что название файла может быть немного короче, а не вот эти три строчки',
                fileWeight: '150мб',
                fileDate: '02.02.2022, 17:45',
              ),
              //TODO Создание карточек результата
            ],
          ),
        ),
      ],
    );
  }
}
