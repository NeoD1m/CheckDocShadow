import 'package:checkdoc/pages/result_page/result_card.dart';
import 'package:flutter/material.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 79, top: 208),
          child: ListView(
            children: const [
              ResultCard(),
              ResultCard(),
              ResultCard(),
            ],
          ),
        ),
      ],
    );
  }
}
