import 'package:checkdoc/pages/date_selection_page/date_body.dart';
import 'package:checkdoc/pages/date_selection_page/date_title_bar.dart';
import 'package:checkdoc/widgets/upload_border.dart';
import 'package:flutter/material.dart';

import '../../widgets/check_doc_appbar.dart';
import '../../widgets/checkdoc_scaler.dart';

class DateSelectionPage extends StatelessWidget {
  const DateSelectionPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckDocScaler(
        children: [
          CheckDocAppBar(),
          UploadBorder(), // Перекрывал кнопку далее
          DateTitleBar(),
          DateBody(),
        ],
      ),
    );
  }
}
