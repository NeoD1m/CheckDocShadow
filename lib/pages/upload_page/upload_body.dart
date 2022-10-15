import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadBody extends StatelessWidget {
  const UploadBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24, top: 104),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.black)),
          width: 1392,
          height: 747,
        ),
        Container(
          margin: const EdgeInsets.only(left: 504, top: 217),
          //decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/logo.png"))),
          width: 403,
          height: 293,
          child: SvgPicture.asset('assets/images/big_folder.svg'),
        ),
        Container(
          margin: const EdgeInsets.only(left: 539, top: 542),
          width: 333,
          height: 24,
          child: Text(
            'Здесь пока ничего нет',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.bodyLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 539, top: 602),
          child: DottedBorder(
            color: Color(0xFF4D5762),
            borderType: BorderType.RRect,
            radius: const Radius.circular(8),
            padding: EdgeInsets.zero,
            strokeWidth: 1,
            dashPattern: const [12.2, 165 / 13],
            child: const SizedBox(
              width: 333,
              height: 148,
            ),
          ),
        ),
      ],
    );
  }
}
