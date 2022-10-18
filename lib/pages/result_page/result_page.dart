import 'package:checkdoc/pages/result_page/widgets/result_body.dart';
import 'package:checkdoc/pages/result_page/widgets/result_title_bar.dart';
import 'package:checkdoc/widgets/check_doc_appbar.dart';
import 'package:checkdoc/widgets/checkdoc_scaler.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckDocScaler(
        children: [
          CheckDocAppBar(),
          ResultTitleBar(),
          ResultBody(),
        ],
      ),
    );
  }
}
