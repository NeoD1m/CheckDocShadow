import 'package:checkdoc/widgets/checkdoc_scaler.dart';
import 'package:flutter/material.dart';

class SingleDatePicker extends StatefulWidget {
  const SingleDatePicker({Key? key, required this.posX, required this.posY}) : super(key: key);
  //const CalendarWidget({Key? key}) : super(key: key);

  final double posX;
  final double posY;

  @override
  State<SingleDatePicker> createState() => SingleDatePickerState();
}

class SingleDatePickerState extends State<SingleDatePicker> {
  @override
  Widget build(BuildContext context) {
    return CheckDocScaler(
      children: [
        Container(
          //margin: EdgeInsets.only(left: 468 + 24 + 24 , top: 121 + 104),
          margin: EdgeInsets.only(left: widget.posX + 365 - 172, top: widget.posY + 12),
          //margin: EdgeInsets.only(left: 0, top: 0),
          width: 312,
          height: 440,
          color: Colors.black,
        ),
      ],
    );
  }
}
