import 'package:flutter/material.dart';

class AppTheme {
  static Color? primaryColor = const Color.fromARGB(255, 86, 177, 226);
  static Color? primaryDarker = const Color.fromARGB(255, 24, 86, 153);

  static final TextTheme _lightTextTheme = ThemeData.light().copyWith().textTheme;

  static ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),

    textTheme: _lightTextTheme.copyWith(
      bodyLarge: _lightTextTheme.bodyLarge?.copyWith(color: primaryDarker),
      bodyMedium: _lightTextTheme.bodyMedium?.copyWith(color: primaryDarker),
      bodySmall: _lightTextTheme.bodySmall?.copyWith(color: primaryDarker),

      titleLarge: _lightTextTheme.titleLarge?.copyWith(color: primaryDarker),
      titleMedium: _lightTextTheme.titleMedium?.copyWith(color:primaryDarker),
      titleSmall: _lightTextTheme.titleSmall?.copyWith(color: primaryDarker),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: primaryDarker,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryDarker,
        foregroundColor: Colors.white,
    ),
  );
}