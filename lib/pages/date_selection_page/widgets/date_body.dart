import 'package:checkdoc/pages/date_selection_page/widgets/document_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateBody extends StatelessWidget {
  const DateBody({Key? key}) : super(key: key);

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
        Container(
          margin: const EdgeInsets.only(left: 686 + 24, top: 225),
          padding: const EdgeInsets.all(40),
          width: 682,
          height: 488,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFFF9FAFB),
          ),
          child: SfDateRangePicker(
            enableMultiView: true,
            showNavigationArrow: true,
            showActionButtons: true,
            confirmText: 'ЗАКРЫТЬ',
            cancelText: 'СБРОСИТЬ ДАТЫ',
            selectionShape: DateRangePickerSelectionShape.circle,
            selectionMode: DateRangePickerSelectionMode.multiRange,
          ),
        ),
      ],
    );
  }
}
