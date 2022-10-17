import 'package:checkdoc/pages/result_page/result_body.dart';
import 'package:checkdoc/widgets/checkdoc_scaler.dart';
import 'package:flutter/material.dart';

import '../../widgets/check_doc_appbar.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CheckDocScaler(
        children: [
          const CheckDocAppBar(),
          ResultBody(),
        ],
      ),
    );
  }
}
