import 'package:checkdoc/pages/date_selection_page/document_date.dart';
import 'package:checkdoc/pages/date_selection_page/document_report_date.dart';
import 'package:flutter/material.dart';

import '../../widgets/document_info.dart';

class DocumentWidget extends StatefulWidget {
  const DocumentWidget({Key? key}) : super(key: key);
  @override
  State<DocumentWidget> createState() => DocumentWidgetState();
}

class DocumentWidgetState extends State<DocumentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 56),
      child: Stack(
        children: [
          const DocumentInfo(),
          Container(
            margin: const EdgeInsets.only(left: 0 + 309, top: 0),
            width: 24,
            height: 24,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.close),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
          ),
          const DocumentDate(),
          const DocumentReportDate(),
        ],
      ),
    );
  }
}
