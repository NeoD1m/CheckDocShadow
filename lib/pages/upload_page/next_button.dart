import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1271, top: 128),
      width: 116,
      height: 48,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.transparent),
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
          disabledBackgroundColor: Color(0xFF222222).withOpacity(0.10),
        ),
        onPressed: () {
          context.go('/date');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 53,
              height: 24,
              child: Text(
                "Далее",
                style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    color: Color(0xFF3272C0).withOpacity(0.62),
                    fontSize: 18), // #222222 - если отключена
              ),
            ),
            Icon(Icons.arrow_right_rounded, color: Color(0xFF3272C0).withOpacity(0.62)), // #222222 - если отключена
          ],
        ),
      ),
    );
  }
}
