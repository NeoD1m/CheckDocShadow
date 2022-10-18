import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultTitleBar extends StatelessWidget {
  const ResultTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24 + 16 + 79, top: 24 + 16 + 104),
          width: 301,
          height: 24,
          child: Text(
            'Файл',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 357 + 16 + 79, top: 24 + 16 + 104),
          width: 301,
          height: 24,
          child: Text(
            'Действующие',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 588 + 16 + 79, top: 24 + 16 + 104),
          width: 301,
          height: 24,
          child: Text(
            'Без статуса',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 819 + 16 + 79, top: 24 + 16 + 104),
          width: 301,
          height: 24,
          child: Text(
            'Недействующие',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
