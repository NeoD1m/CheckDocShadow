import 'package:checkdoc/widgets/checkdoc_scaler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'package:google_fonts/google_fonts.dart';

import 'calendar/date_header.dart';

class SingleDatePicker extends StatefulWidget {
  const SingleDatePicker({Key? key, required this.posX, required this.posY}) : super(key: key);
  //const CalendarWidget({Key? key}) : super(key: key);

  final double posX;
  final double posY;

  @override
  State<SingleDatePicker> createState() => SingleDatePickerState();
}

class SingleDatePickerState extends State<SingleDatePicker> {
  final DateTime firstAllowedDate = DateTime.now().subtract(const Duration(days: 300));
  final DateTime lastAllowedDate = DateTime.now().add(const Duration(days: 300));
  DateTime currentDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CheckDocScaler(
      children: [
        Container(
          //margin: EdgeInsets.only(left: 468 + 24 + 24 , top: 121 + 104),
          //margin: EdgeInsets.only(left: widget.posX + 365 - 172, top: widget.posY + 12),
          margin: EdgeInsets.only(left: widget.posX + 24 + 24, top: widget.posY),
          width: 312,
          height: 440,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
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
              Material(
                child: Container(
                  margin: const EdgeInsets.only(left: 16, top: 16),
                  width: 280,
                  height: 68,
                  child: DateHeader.docDate(),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, top: 16 + 84),
                width: 280,
                height: 300, //344,
                child: buildDatePicker(),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, top: 376),
                width: 158,
                height: 48,
                child: TextButton(
                    onPressed: () => setState(() {
                          currentDay = DateTime.now();
                        }),
                    child: Text(
                      "Сбросить даты",
                      style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFF3272C0), fontSize: 18),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16 + 175, top: 376),
                width: 101,
                height: 48,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFF3272C0).withOpacity(0.9),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                  child: Text(
                    "Закрыть",
                    style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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
    return DayPicker.single(
      selectedDate: currentDay,
      onChanged: (day) => setState(() {
        currentDay = day;
      }),
      firstDate: firstAllowedDate,
      lastDate: lastAllowedDate,
      datePickerStyles: styles,
      // selectedPeriod: currentPeriod,
    );
  }
}
