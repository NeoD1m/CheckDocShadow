import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultDocContent extends StatelessWidget {
  const ResultDocContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 0, top: 113),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          width: 422,
          height: 65,
          child: Text(
            'Название документа',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0 + 422, top: 113),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          width: 200,
          height: 65,
          child: Text(
            'Статус на сегодня',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0 + 622, top: 113),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          width: 200,
          height: 65,
          child: Text(
            'Изменялся ли с 2021/10/25',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0 + 822, top: 113),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          width: 422,
          height: 65,
          child: Text(
            'Контекст',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0, top: 178 + 16),
          width: 382,
          height: 72,
          child: Text(
            'Федеральный закон от 28 июня 2022 г. N 212-ФЗ "О внесении изменений в отдельные законодательные акты Российской Федерации"',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
