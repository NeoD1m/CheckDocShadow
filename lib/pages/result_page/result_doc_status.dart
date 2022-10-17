import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultDocStatus extends StatelessWidget {
  const ResultDocStatus({super.key, required this.color, required this.title, required this.offset, required this.quantity});

  const ResultDocStatus.valid({super.key, required this.quantity})
      : color = const Color(0xFF189D8D),
        title = 'ДЕЙСТВУЮЩИХ',
        offset = 349;
  const ResultDocStatus.unknown({super.key, required this.quantity})
      : color = const Color(0xFFF18040),
        title = 'ИЗМЕНИВШИЕСЯ',
        offset = 349 + 231;
  const ResultDocStatus.invalid({super.key, required this.quantity})
      : color = const Color(0xFFDC5A63),
        title = 'НЕДЕЙСТВУЮЩИХ',
        offset = 349 + 231 + 231;

  final Color color;
  final String title;
  final double offset;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: offset, top: 14.5),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          width: 152,
          height: 36,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: color)),
          child: SizedBox(
            width: 128,
            height: 20,
            child: Text(
              '${quantity.toString()} $title',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: color),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
