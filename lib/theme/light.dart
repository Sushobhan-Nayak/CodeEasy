import 'package:flutter/material.dart';

ThemeData lighttheme = ThemeData(
  focusColor: Colors.amber[700],
  hoverColor: Colors.amber[700],
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: Colors.red[600]),
  appBarTheme: AppBarTheme(backgroundColor: Colors.amber[700]),
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    outline: Colors.black,
      background: Colors.white,
      primary: Color.fromARGB(255, 5, 184, 244),
      secondary: Color.fromARGB(255, 226, 171, 6),
      tertiary: Colors.white),
);
