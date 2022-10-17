import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentDate extends StatefulWidget {
  const DocumentDate({Key? key}) : super(key: key);
  @override
  State<DocumentDate> createState() => DocumentDateState();
}

class DocumentDateState extends State<DocumentDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 365, top: 0),
      width: 160,
      height: 68,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF9FAFB),
        border: Border.all(color: const Color(0xFFAAABAD)),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 0, top: 0),
            width: 92,
            height: 16,
            child: Text(
              'Дата документа',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 20),
            width: 81,
            height: 24,
            child: Text(
              '23.03.2019',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, color: const Color(0xFFB1B9C3)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 112 - 12 + 6, top: 16 - 12 + 6), // 12 - это падинг
            width: 24,
            height: 24,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.calendar_today,
                color: Color(0xFFAAABAD),
                //size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
