import 'package:checkdoc/pages/date_selection_page/widgets/document_date.dart';
import 'package:checkdoc/widgets/document_info.dart';
import 'package:flutter/material.dart';

class DocumentWidget extends StatefulWidget {
  const DocumentWidget({Key? key}) : super(key: key);
  @override
  State<DocumentWidget> createState() => DocumentWidgetState();
}

class DocumentWidgetState extends State<DocumentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24 - 24, bottom: 32 - 24),
      child: Stack(
        children: [
          const DocumentInfo(
            name: 'Мы надеемся, что название файла может быть немного короче, а не вот эти три строчки',
            date: '150мб, 02.02.2022, 17:45',
          ),
          Container(
            margin: const EdgeInsets.only(left: 24 + 309, top: 24),
            width: 24,
            height: 24,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.close),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 365 + 24, top: 24),
            child: const DocumentDate.docDate(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 365 + 24, top: 24),
            child: const DocumentDate.reportDate(),
          ),
        ],
      ),
    );
  }
}
