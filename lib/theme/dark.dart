import 'package:flutter/material.dart';

ThemeData darktheme = ThemeData(
  focusColor: Colors.grey[700],
  hoverColor: Colors.amber[700],
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: Colors.grey[700]),
  appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[700], foregroundColor: Colors.amber[700]),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
      background: Colors.black,
      primary: Color.fromARGB(255, 62, 10, 6),
      secondary: Color.fromARGB(255, 4, 31, 65),
      tertiary: Colors.amber),
);
