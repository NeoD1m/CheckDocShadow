import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';

import 'date_header.dart';

class CalendarPicker extends StatefulWidget {
  const CalendarPicker({super.key, required this.firstAllowedDate, required this.lastAllowedDate});
  final DateTime firstAllowedDate;
  final DateTime lastAllowedDate;

  @override
  State<CalendarPicker> createState() => CalendarPickerState();
}

class CalendarPickerState extends State<CalendarPicker> {
  DatePeriod currentPeriod = DatePeriod(DateTime.now(), DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 686 + 24, top: 225),
      width: 682,
      height: 488,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF9FAFB),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            blurRadius: 4.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 40, top: 40),
            width: 280,
            height: 68,
            child: DateHeader.docDate(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40 + 316, top: 40),
            width: 280,
            height: 68,
            child: DateHeader.reportDate(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, top: 40 + 84),
            width: 280,
            height: 344,
            child: buildDatePicker(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40 + 316, top: 40 + 84),
            width: 280,
            height: 344,
            child: buildDatePicker(),
          ),
        ],
      ),
    );
  }

  Widget buildDatePicker() {
    DatePickerRangeStyles styles = DatePickerRangeStyles(
      selectedPeriodLastDecoration: const BoxDecoration(
        color: Color(0xFF3272C0),
        borderRadius: BorderRadiusDirectional.all(Radius.circular(8.0)),
      ),
      selectedPeriodStartDecoration: const BoxDecoration(
        color: Color(0xFF3272C0),
        borderRadius: BorderRadiusDirectional.all(Radius.circular(8.0)),
      ),
      selectedPeriodMiddleDecoration: const BoxDecoration(color: Color(0xFFF4F5F6), shape: BoxShape.rectangle),
    );
    return RangePicker(
      onChanged: (period) => setState(() {
        currentPeriod = period;
      }),
      firstDate: widget.firstAllowedDate,
      lastDate: widget.lastAllowedDate,
      datePickerStyles: styles,
      selectedPeriod: currentPeriod,
    );
  }
}
