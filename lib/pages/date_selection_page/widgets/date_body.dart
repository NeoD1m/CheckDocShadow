import 'package:checkdoc/pages/date_selection_page/widgets/document_widget.dart';
import 'package:flutter/material.dart';

class DateBody extends StatelessWidget {
  const DateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 48, top: 225),
          child: ListView(
            children: const [
              DocumentWidget(),
              DocumentWidget(),
              DocumentWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
