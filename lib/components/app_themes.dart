import 'package:flutter/material.dart';
import 'constants.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: kLightBackgroundColor,
    appBarTheme: AppBarTheme(color: kLightBackgroundColor),
    cardColor: kCardColorLight, // Light mode container color
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kDarkBackgroundColor,
    appBarTheme: AppBarTheme(color: kDarkBackgroundColor),
    cardColor: kCardColorDark, // Dark mode container color
  );
}
