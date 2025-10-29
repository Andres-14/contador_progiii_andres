import 'package:flutter/material.dart';

class AppTheme {
  static Color? primaryColor = const Color.fromARGB(255, 3, 2, 49);
  static Color? primaryDarker = const Color.fromARGB(255, 1, 0, 14);

  static ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: primaryDarker,
    ),
  );
}