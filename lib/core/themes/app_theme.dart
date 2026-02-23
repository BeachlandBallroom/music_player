import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkMode = ThemeData(
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.dark(
      surface: Colors.grey.shade900,
      primary: Colors.grey.shade600,
      secondary: Colors.grey.shade800,
      inversePrimary: Colors.grey.shade300,
    ),
  );

  static ThemeData lightMode = ThemeData(
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.light(
      surface: Colors.grey.shade300,
      primary: Colors.grey.shade500,
      secondary: Colors.grey.shade200,
      inversePrimary: Colors.grey.shade900,
    ),
  );
}