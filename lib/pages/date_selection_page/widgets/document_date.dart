import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'single_date_picker.dart';

class DocumentDate extends StatefulWidget {
  const DocumentDate({Key? key, required this.title, required this.offset, required this.width, required this.buttonOffset, this.onTap}) : super(key: key);
  const DocumentDate.docDate({super.key})
      : title = 'Дата документа',
        offset = 0,
        width = 160,
        buttonOffset = 112,
        onTap = null;
  const DocumentDate.reportDate({super.key})
      : title = 'Отчетная дата',
        offset = 184,
        width = 150,
        buttonOffset = 102,
        onTap = null;
  const DocumentDate.docCalendar({super.key, required this.onTap})
      : title = 'Дата документа',
        offset = 0,
        width = 160,
        buttonOffset = 112;
  const DocumentDate.reportCalendar({super.key, required this.onTap})
      : title = 'Отчетная дата',
        offset = 184,
        width = 150,
        buttonOffset = 102;

  final String title;
  final double offset;
  final double width;
  final double buttonOffset;
  final VoidCallback? onTap;

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
      margin: EdgeInsets.only(left: widget.offset, top: 0),
      width: widget.width,
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
            width: 85, //81
            height: 24,
            // child: Text(
            //   '23.03.2019',
            //   style: GoogleFonts.roboto(
            //     textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, color: const Color(0xFFB1B9C3)),
            //   ),
            // ),
            child: TextField(
              onSubmitted: (date) {
                // TODO Установить дату [date]
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}',
                hintStyle: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, color: const Color(0xFFB1B9C3)),
                ),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^[\.0-9]*$')),
              ],
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, color: const Color(0xFFB1B9C3)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: widget.buttonOffset - 12 + 6, top: 16 - 12 + 6), // 12 - это падинг
            width: 24,
            height: 24,
            child: IconButton(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              padding: EdgeInsets.zero,
              onPressed: () {
                if (widget.onTap == null) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      // RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
                      // Offset position = box.localToGlobal(Offset.zero); //this is global position
                      // y = position.dy; //this is y - I think it's what you want
                      // x = position.dx; //this is x - I think it's what you want
                      // print('X: ${x + widget.offset + 365}, Y: $y');
                      return SingleDatePicker(posX: 468, posY: 225);
                      //return CalendarWidget();
                    },
                    barrierColor: null,
                  );
                } else {
                  widget.onTap!();
                }
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
