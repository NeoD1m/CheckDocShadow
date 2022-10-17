import 'package:checkdoc/pages/result_page/result_card.dart';
import 'package:flutter/material.dart';

class ResultBody extends StatefulWidget {
  ResultBody({Key? key}) : super(key: key);

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
          // child: ListView(
          //   children: const [
          //     ResultCard(),
          //     ResultCard(),
          //     ResultCard(),
          //   ],
          // ),
          child: Column(
            // children: [
            //   ExpansionPanelList(
            //     expansionCallback: (index, isExpanded) {
            //       setState(() {
            //         expandedList[index] = !isExpanded;
            //       });
            //     },
            //     children: [
            //       ExpansionPanel(
            //         headerBuilder: (BuildContext context, bool isExpanded) {
            //           return ResultCard();
            //         },
            //         body: Container(
            //           height: 500,
            //         ),
            //         isExpanded: expandedList[0],
            //       ),
            //     ],
            //   ),
            // ],
            children: [
              ResultCard(),
            ],
          ),
        ),
      ],
    );
  }
}
