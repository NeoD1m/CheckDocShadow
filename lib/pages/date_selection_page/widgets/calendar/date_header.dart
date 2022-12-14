import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateHeader extends StatefulWidget {
  const DateHeader({Key? key, required this.title, required this.offset}) : super(key: key);
  const DateHeader.docDate({super.key})
      : title = 'Дата документа',
        offset = 0;
  const DateHeader.reportDate({super.key})
      : title = 'Отчетная дата',
        offset = 184;

  final String title;
  final double offset;

  @override
  State<DateHeader> createState() => DateHeaderState();
}

class DateHeaderState extends State<DateHeader> {
  GlobalKey key = GlobalKey();
  double y = 0;
  double x = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      //margin: EdgeInsets.only(left: 365 + widget.offset, top: 0),
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
              widget.title,
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
            margin: const EdgeInsets.only(left: 232 - 12 + 6, top: 16 - 12 + 6), // 12 - это падинг
            width: 24,
            height: 24,
            child: IconButton(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
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
