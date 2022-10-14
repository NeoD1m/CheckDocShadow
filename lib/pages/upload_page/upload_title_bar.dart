import 'package:checkdoc/pages/upload_page/next_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadTitleBar extends StatelessWidget {
  const UploadTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, top: 105), // 24,105 - из за перекрытия кнопки далее
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            color: Color(0xFFF4F5F6),
          ),
          width: 1390, // 1392 97 - из за перекрытия кнопки далее
          height: 96,
        ),
        Container(
          margin: EdgeInsets.only(left: 512 + 58, top: 138),
          width: 192,
          height: 29,
          child: Text(
            "Загрузка файлов",
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.bodyLarge,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 712 + 58, top: 143),
          width: 100,
          height: 20,
          child: Text(
            "(Шаг 1 из 2)",
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.bodyLarge,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xFF767676),
            ),
          ),
        ),
        NextButton(),
      ],
    );
  }
}
