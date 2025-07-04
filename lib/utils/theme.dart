import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Roboto',
      brightness: Brightness.light,
      primaryColor: Colors.deepPurple,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.deepPurpleAccent,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      fontFamily: 'Roboto',
      brightness: Brightness.dark,
      primaryColor: Colors.tealAccent,
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.cyanAccent,
      ),
    );
  }

  static Gradient get glowGradient {
    return const LinearGradient(
      colors: [Color(0xFF00C9FF), Color(0xFF92FE9D)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
// Theme setup
