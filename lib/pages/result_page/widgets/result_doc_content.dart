import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultDocContent extends StatelessWidget {
  const ResultDocContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
        Container(
          margin: const EdgeInsets.only(left: 0, top: 178 + 16 + 72),
          width: 382,
          height: 72,
          child: Text(
            'Федеральный закон от 28 июня 2022 г. N 212-ФЗ "О внесении изменений в отдельные законодательные акты Российской Федерации"',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0, top: 178 + 16 + 72 + 72),
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
