import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FileDrop extends StatelessWidget {
  const FileDrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 534 + 39, top: 602 + 31),
          width: 256,
          height: 42,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Перетащите файл или ',
                  style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.headlineSmall, fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: 'загрузите',
                  style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.headlineSmall, fontWeight: FontWeight.w400, color: const Color(0xFF3272C0)),
                ),
                TextSpan(
                  text: '\nПоддерживаемые форматы: png, jpg',
                  //style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.headlineSmall, color: Color(0xFFB1B9C3), fontSize: 18),
                  style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyMedium, color: const Color(0xFFB1B9C3)),
                ),
              ],
            ),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(left: 539, top: 602),
        //   width: 333,
        //   height: 148,
        //   child: DropzoneView(
        //     operation: DragOperation.copy,
        //     cursor: CursorType.Default,
        //     onCreated: (DropzoneViewController ctrl) => controller = ctrl,
        //     onLoaded: () => print('Zone loaded'),
        //     onError: (String? ev) => print('Error: $ev'),
        //     onHover: () => print('Zone hovered'),
        //     onDrop: (dynamic ev) => print('Drop: $ev'),
        //     //onDropMultiple: (List<dynamic> ev) => print('Drop multiple: ${ev}'), // TODO Пофиксить нул чек
        //     onLeave: () => print('Zone left'),
        //   ),
        // ),
      ],
    );
  }
}
