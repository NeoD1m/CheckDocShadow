import 'package:checkdoc/pages/date_selection_page/document_date.dart';
import 'package:checkdoc/pages/date_selection_page/document_report_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Container(
            margin: const EdgeInsets.only(left: 0, top: 0), // 48, 226
            width: 24,
            height: 34,
            child: SvgPicture.asset("assets/images/doc_icon.svg"),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0 + 28, top: 0),
            width: 277,
            height: 42,
            child: Text(
              "Мы надеемся, что название файла может быть немного короче, а не вот эти три строчки",
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0 + 309, top: 0),
            width: 24,
            height: 24,
            child: Icon(
              Icons.close,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0 + 28, top: 0 + 46),
            width: 277,
            height: 15,
            child: Text(
              "150мб, 02.02.2022, 17:45",
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: const Color(0xFF8D8D8D)),
              ),
            ),
          ),
          const DocumentDate(),
          const DocumentReportDate(),
        ],
      ),
    );
  }
}
