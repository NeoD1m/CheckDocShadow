import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData? getCheckDocTheme() {
  return ThemeData(

      /// TODO добавить цветочков
      brightness: Brightness.light,
      primaryColor: const Color(0xFF3272C0),
      fontFamily: 'Roboto',

      /// TODO добавить шрифтиков
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 72.0, fontWeight: FontWeight.w700, color: Colors.black)),
        headlineMedium: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500, color: Colors.black)),
        headlineSmall: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.black)),
        bodyLarge: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black)),
        bodyMedium: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.black)),
      ),
      appBarTheme: const AppBarTheme(elevation: 0.0, color: Colors.white));
}
