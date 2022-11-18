import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultDocTableStatus extends StatelessWidget {
  const ResultDocTableStatus({super.key, required this.color, required this.title, required this.width});

  const ResultDocTableStatus.valid({super.key})
      : color = const Color(0xFF0055A3),
        title = 'ДЕЙСТВУЮЩИЙ',
        width = 134;
  const ResultDocTableStatus.invalid({super.key})
      : color = const Color(0xFF0055A3),
        title = 'НЕДЕЙСТВУЮЩИЙ',
        width = 134;
  const ResultDocTableStatus.yes({super.key})
      : color = const Color(0xFF0055A3),
        title = 'ДА',
        width = 51;
  const ResultDocTableStatus.no({super.key})
      : color = const Color(0xFF0055A3),
        title = 'НЕТ',
        width = 51;

  final Color color;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Stack(
        children: [
          Container(
            //margin: EdgeInsets.only(left: 0, top: 14.5),
            //padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            width: width,
            height: 28,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: color)),
          ),
          Container(
            margin: EdgeInsets.only(left: 12, top: 6),
            width: width - 24, //110
            height: 20,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: const Color(0xFF3272C0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
