import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 534 + 39 + 35, top: 602 + 31 + 50),
      width: 186,
      height: 48,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(backgroundColor: Color(0xFF3272C0).withOpacity(0.9), padding: EdgeInsets.zero),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Colors.white),
            SizedBox(
              width: 132,
              height: 24,
              child: Text(
                "загрузить файл",
                style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
