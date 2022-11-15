import 'package:checkdoc/pages/date_selection_page/widgets/document_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'package:google_fonts/google_fonts.dart';

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
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return isExpanded ? buildExpanded() : buildCollapsed();
  }

  Widget buildCollapsed() {
    return Container(
      margin: const EdgeInsets.only(left: 953 + 24, top: 225),
      width: 415,
      height: 164,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF9FAFB),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 4.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 40, top: 16),
            child: DocumentDate.docCalendar(
              onTap: () => setState(() {
                isExpanded = true;
              }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, top: 16),
            child: DocumentDate.reportCalendar(
              onTap: () => setState(() {
                isExpanded = true;
              }),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, top: 100),
            width: 383,
            height: 48,
            child: TextButton(
                onPressed: () {
                  //TODO Обновить даты всем документам
                },
                child: Text(
                  "Применить для всех",
                  style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFF3272C0), fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }

  Widget buildExpanded() {
    return Container(
      margin: const EdgeInsets.only(left: 686 + 24, top: 225),
      width: 682,
      height: 488,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF9FAFB),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 4.0), // shadow direction: bottom right
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
            height: 300, //344,
            child: buildDatePicker(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40 + 316, top: 40 + 84),
            width: 280,
            height: 300, //344,
            child: buildDatePicker(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 315, top: 400),
            width: 158,
            height: 48,
            child: TextButton(
                onPressed: () => setState(() {
                      currentPeriod = DatePeriod(DateTime.now(), DateTime.now());
                    }),
                child: Text(
                  "Сбросить даты",
                  style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFF3272C0), fontSize: 18),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(left: 315 + 174, top: 400),
            width: 153,
            height: 48,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xFF3272C0).withOpacity(0.9),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () => setState(() {
                isExpanded = false;
              }),
              child: Text(
                "Закрыть",
                style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDatePicker() {
    DatePickerRangeStyles styles = DatePickerRangeStyles(
      selectedPeriodStartDecoration: const BoxDecoration(
        color: Color(0xFF3272C0),
        borderRadius: BorderRadiusDirectional.all(Radius.circular(8.0)),
      ),
      selectedPeriodMiddleDecoration: const BoxDecoration(color: Color(0xFFF4F5F6), shape: BoxShape.rectangle),
      selectedPeriodLastDecoration: const BoxDecoration(
        color: Color(0xFF3272C0),
        borderRadius: BorderRadiusDirectional.all(Radius.circular(8.0)),
      ),
      selectedSingleDateDecoration: const BoxDecoration(
        color: Color(0xFF3272C0),
        borderRadius: BorderRadiusDirectional.all(Radius.circular(8.0)),
      ),
      selectedPeriodStartTextStyle:
          GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFFF9FAFB), fontWeight: FontWeight.w500),
      selectedPeriodMiddleTextStyle:
          GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFF031528), fontWeight: FontWeight.w500),
      selectedPeriodEndTextStyle: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFFF9FAFB), fontWeight: FontWeight.w500),
      selectedDateStyle: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFFF9FAFB), fontWeight: FontWeight.w500),
      defaultDateTextStyle: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFF031528), fontWeight: FontWeight.w500),
      currentDateStyle: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFF031528), fontWeight: FontWeight.w500),
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
