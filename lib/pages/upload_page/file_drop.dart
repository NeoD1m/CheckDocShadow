import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FileDrop extends StatelessWidget {
  const FileDrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 534 + 39, top: 602 + 31),
      width: 256,
      height: 42,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Перетащите файл или ',
              style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.headlineSmall, fontWeight: FontWeight.w400),
            ),
            TextSpan(
              text: 'загрузите',
              style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.headlineSmall, fontWeight: FontWeight.w400, color: Color(0xFF3272C0)),
            ),
            TextSpan(
              text: '\nПоддерживаемые форматы: png, jpg',
              //style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.headlineSmall, color: Color(0xFFB1B9C3), fontSize: 18),
              style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Color(0xFFB1B9C3)),
            ),
          ],
        ),
      ),
    );
  }
}
