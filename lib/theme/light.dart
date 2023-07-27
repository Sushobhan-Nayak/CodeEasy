import 'package:flutter/material.dart';

ThemeData lighttheme = ThemeData(
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: Colors.red[900]),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue
  ),
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
      background: Colors.white,
      primary: Colors.yellow,
      secondary: Colors.blue,
      tertiary: Colors.white),
);
