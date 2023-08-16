import 'package:flutter/material.dart';

ThemeData lighttheme = ThemeData(
  focusColor: const Color.fromARGB(255, 86, 127, 3),
  hoverColor: Colors.amber[700],
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 86, 127, 3)),
  appBarTheme:
      const AppBarTheme(backgroundColor: Color.fromARGB(255, 86, 127, 3)),
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
      outline: Colors.black,
      background: Colors.white,
      primary: Color.fromARGB(255, 224, 244, 50),
      secondary: Color.fromARGB(255, 116, 173, 12),
      tertiary: Colors.white),
);
