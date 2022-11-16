import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadReport extends StatelessWidget {
  const DownloadReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 1050 - 16, top: 14.5),
      width: 180,
      height: 36,
      child: TextButton(
        onPressed: () {
          // TODO Скачать отчет
        },
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 3, top: 3),
              width: 24,
              height: 24,
              child: Icon(
                Icons.download,
                size: 24,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 34, top: 6),
              width: 138,
              height: 24,
              child: Text(
                "ВЫГРУЗИТЬ ОТЧЕТ",
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500, color: Color(0xFF3272C0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
