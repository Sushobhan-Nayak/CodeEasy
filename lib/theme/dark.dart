import 'package:flutter/material.dart';

ThemeData darktheme = ThemeData(
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: Colors.grey[700]),
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black, foregroundColor: Colors.blue),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
      background: Colors.black,
      primary: Color.fromARGB(255, 62, 10, 6),
      secondary: Color.fromARGB(255, 4, 31, 65),
      tertiary: Colors.amber),
);
