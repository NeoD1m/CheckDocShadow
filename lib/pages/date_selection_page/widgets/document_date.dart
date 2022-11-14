import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'single_date_picker.dart';

class DocumentDate extends StatefulWidget {
  const DocumentDate({Key? key, required this.title, required this.offset}) : super(key: key);
  const DocumentDate.docDate({super.key})
      : title = 'Дата документа',
        offset = 0;
  const DocumentDate.reportDate({super.key})
      : title = 'Отчетная дата',
        offset = 184;

  final String title;
  final double offset;

  @override
  State<DocumentDate> createState() => DocumentDateState();
}

class DocumentDateState extends State<DocumentDate> {
  GlobalKey key = GlobalKey();
  double y = 0;
  double x = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      margin: EdgeInsets.only(left: 365 + widget.offset, top: 0),
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
            margin: const EdgeInsets.only(left: 112 - 12 + 6, top: 16 - 12 + 6), // 12 - это падинг
            width: 24,
            height: 24,
            child: IconButton(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              padding: EdgeInsets.zero,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
                    Offset position = box.localToGlobal(Offset.zero); //this is global position
                    y = position.dy; //this is y - I think it's what you want
                    x = position.dx; //this is x - I think it's what you want
                    print('X: ${x + widget.offset + 365}, Y: $y');
                    return SingleDatePicker(posX: x + widget.offset, posY: y);
                    //return CalendarWidget();
                  },
                  barrierColor: null,
                );
              },
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
