import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadStatusPopup extends StatefulWidget {
  const UploadStatusPopup({Key? key, required this.progressPercent, required this.children}) : super(key: key);

  final double progressPercent;
  final List<Widget> children;

  @override
  State<UploadStatusPopup> createState() => UploadStatusPopupState();
}

class UploadStatusPopupState extends State<UploadStatusPopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 923 + 24, top: 297 + 104),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 0, top: 0),
            width: 451,
            height: 82,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              color: Color(0xFFF4F5F6),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              clipBehavior: Clip.hardEdge,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: widget.progressPercent * 4.51,
                  height: 82,
                  color: const Color(0xFF3272C0),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 0 + 82),
            padding: const EdgeInsets.all(24),
            width: 451,
            height: 267,
            color: Colors.transparent,
            child: ListView(
              children: widget.children,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 295, top: 23),
            width: 92,
            height: 36,
            child: TextButton(
              onPressed: () {}, //TODO Логика сворачивания
              child: Text(
                'СВЕРНУТЬ',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF3272C0),
                      ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 295 + 108, top: 23 + 6),
            width: 24,
            height: 24,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.close),
              color: Theme.of(context).primaryColor,
              onPressed: () {}, // TODO Удаление из очереди загрузки
            ),
          ),
        ],
      ),
    );
  }
}
