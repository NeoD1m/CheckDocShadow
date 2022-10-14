import 'package:flutter/material.dart';

ThemeData? getCheckDocTheme() {
  return ThemeData(
    /// TODO добавить цветочков
    brightness: Brightness.light,
    primaryColor: const Color(0xFF3272C0),

    fontFamily: 'Roboto',

    /// TODO добавить шрифтиков
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),

    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      color: Colors.white
    )
  );
}
