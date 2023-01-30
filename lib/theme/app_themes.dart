import 'package:chatgpt/constant/colours.dart';
import 'package:flutter/material.dart';

enum AppTheme {
  lightTheme,
  darkTheme,
}

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      scaffoldBackgroundColor: alabaster,
      primaryColor: alabaster,
      colorScheme: const ColorScheme.dark(
        background: alabaster,
        secondary: erieBlack,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: alabaster,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: erieBlack, fontSize: 14),
      ),
    ),
    AppTheme.darkTheme: ThemeData(
      scaffoldBackgroundColor: erieBlack,
      primaryColor: erieBlack,
      colorScheme: const ColorScheme.dark(
        background: erieBlack,
        secondary: alabaster,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: erieBlack,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: alabaster, fontSize: 14),
      ),
    ),
  };
}
