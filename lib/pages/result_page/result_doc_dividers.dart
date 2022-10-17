import 'package:flutter/material.dart';

class ResultDocDividers extends StatelessWidget {
  const ResultDocDividers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Горизантальный разделитель
        Container(
          margin: const EdgeInsets.only(left: 0, top: 168),
          color: Color(0xFF000000).withOpacity(0.28),
          width: 1268,
          height: 1,
        ),
        // Вертикальный разделитель
        Container(
          margin: const EdgeInsets.only(left: 422, top: 168),
          color: Color(0xFF000000).withOpacity(0.28),
          width: 1,
          height: 448,
        ),
        // Вертикальный разделитель
        Container(
          margin: const EdgeInsets.only(left: 622, top: 168),
          color: Color(0xFF000000).withOpacity(0.28),
          width: 1,
          height: 448,
        ),
        // Вертикальный разделитель
        Container(
          margin: const EdgeInsets.only(left: 822, top: 168),
          color: Color(0xFF000000).withOpacity(0.28),
          width: 1,
          height: 448,
        ),
      ],
    );
  }
}
