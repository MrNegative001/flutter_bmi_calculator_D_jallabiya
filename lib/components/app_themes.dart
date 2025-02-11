import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFD1D9E6),
    appBarTheme: AppBarTheme(color: Color(0xFFD1D9E6)),
    cardColor: Colors.white, // Light mode container color
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xFF242424),
    appBarTheme: AppBarTheme(color: Color(0xFF242424)),
    cardColor: Color(0xFF373737), // Dark mode container color
  );
}
