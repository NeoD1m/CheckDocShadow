import 'package:checkdoc/widgets/next_button.dart';
import 'package:checkdoc/widgets/previous_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTitleBar extends StatelessWidget {
  const DateTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 25, top: 105), // 24,105 - из за перекрытия кнопки далее
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            color: Color(0xFFF4F5F6),
          ),
          width: 1390, // 1392 97 - из за перекрытия кнопки далее
          height: 96,
        ),
        Container(
          margin: const EdgeInsets.only(left: 432, top: 138),
          width: 467,
          height: 29,
          child: Text(
            "Выбор даты для проверки действия НПА",
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.bodyLarge,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 907, top: 143),
          width: 100,
          height: 20,
          child: Text(
            "(Шаг 2 из 2)",
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.bodyLarge,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF767676),
            ),
          ),
        ),
        const NextButton(path: '/result'),
        const PreviousButton(path: '/upload'),
      ],
    );
  }
}
