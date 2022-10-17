import 'package:checkdoc/pages/result_page/result_doc_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 129 - 113),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.black)),
          width: 1292,
          height: 113,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 0, top: 0), // 48, 226
                width: 24,
                height: 34,
                child: SvgPicture.asset("assets/images/doc_icon.svg"),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0 + 28, top: 0),
                width: 277,
                height: 42,
                child: Text(
                  "Мы надеемся, что название файла может быть немного короче, а не вот эти три строчки",
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0 + 28, top: 0 + 46),
                width: 277,
                height: 15,
                child: Text(
                  "150мб, 02.02.2022, 17:45",
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: const Color(0xFF8D8D8D)),
                  ),
                ),
              ),
              ResultDocStatus.valid(quantity: 0),
              ResultDocStatus.unknown(quantity: 0),
              ResultDocStatus.invalid(quantity: 0),
            ],
          ),
        ),
      ],
    );
  }
}
