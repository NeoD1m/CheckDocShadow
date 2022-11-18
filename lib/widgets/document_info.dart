import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentInfo extends StatelessWidget {
  const DocumentInfo({Key? key, required this.name, required this.date}) : super(key: key);

  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
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
              name,
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
              date,
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: const Color(0xFF8D8D8D)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
