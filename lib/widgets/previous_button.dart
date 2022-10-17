import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 48, top: 128),
      width: 116,
      height: 48,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.transparent),
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
          disabledBackgroundColor: const Color(0xFF222222).withOpacity(0.10),
        ),
        onPressed: () {
          context.go(path);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_left_rounded, color: const Color(0xFF3272C0).withOpacity(0.62)), // #222222 - если отключена
            SizedBox(
              width: 53,
              height: 24,
              child: Text(
                "Назад",
                style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    color: const Color(0xFF3272C0).withOpacity(0.62),
                    fontSize: 18), // #222222 - если отключена
              ),
            ),
          ],
        ),
      ),
    );
  }
}
