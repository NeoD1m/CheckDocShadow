import 'package:checkdoc/pages/date_selection_page/widgets/document_widget.dart';
import 'package:flutter/material.dart';

import 'calendar/calendar_picker.dart';

class DateBody extends StatelessWidget {
  const DateBody({Key? key, required this.testKey}) : super(key: key);
  final GlobalKey<CalendarPickerState> testKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 48, top: 225 - (121 - 97)),
          width: 780,
          height: 649,
          child: ClipRect(
            clipBehavior: Clip.hardEdge,
            child: ListView(
              children: const [
                DocumentWidget(),
                DocumentWidget(),
                DocumentWidget(),
                DocumentWidget(),
                DocumentWidget(),
                DocumentWidget(),
                DocumentWidget(),
                DocumentWidget(),
              ],
            ),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(left: 686 + 24, top: 225),
        //   //padding: const EdgeInsets.all(40),
        //   width: 682,
        //   height: 488,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(8),
        //     color: const Color(0xFFF9FAFB),
        //   ),
        //   child: Align(
        //     alignment: Alignment.topLeft,
        //     child: CalendarPicker(
        //       key: testKey,
        //       firstAllowedDate: DateTime.now().subtract(const Duration(days: 300)),
        //       lastAllowedDate: DateTime.now().add(const Duration(days: 300)),
        //     ),
        //   ),
        // ),
        CalendarPicker(
          key: testKey,
          firstAllowedDate: DateTime.now().subtract(const Duration(days: 300)),
          lastAllowedDate: DateTime.now().add(const Duration(days: 300)),
        ),
      ],
    );
  }
}
