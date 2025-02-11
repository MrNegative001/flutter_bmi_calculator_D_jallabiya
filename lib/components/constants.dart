import 'package:flutter/material.dart';

// App Colors
const Color kPrimaryColor = Colors.teal; // Main active color
const Color kInactiveLightMode = Color(0xFFD1D9E6); // Light mode inactive color
const Color kInactiveDarkMode = Color(0xFF373737); // Dark mode inactive color
const Color kTextColor = Color(0xFF878787); // Text color for rulers and labels
const Color kDarkBackgroundColor = Color(0xFF242424); // Dark mode background
const Color kLightBackgroundColor = Color(0xFFD1D9E6); // Light mode background
const Color kCardColorLight = Colors.white; // Light mode card color
const Color kCardColorDark = Color(0xFF373737); // Dark mode card color

// Text Styles
const TextStyle kRulerTextStyle =
    TextStyle(color: kTextColor); // Ruler text style
const TextStyle kResultTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 50); // Result text style
const TextStyle kTextStyles =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold); // General text style
const TextStyle kLargeTextStyles =
    TextStyle(fontSize: 80, fontWeight: FontWeight.bold); // Large text style

// App Theme Colors
const Color kUnderweightColor = Colors.yellow; // BMI underweight color
const Color kNormalColor = Colors.green; // BMI normal color
const Color kOverweightColor = Colors.orange; // BMI overweight color
const Color kObeseColor = Colors.red; // BMI obese color

// Slider Theme
const double kSliderTrackHeight = 20.0; // Slider track height
const Color kSliderActiveColor = kPrimaryColor; // Slider active color
const Color kSliderInactiveColor = kInactiveLightMode; // Slider inactive color
final Color kSliderOverlayColor =
    kPrimaryColor.withOpacity(0.2); // Slider overlay color

// Button Styles
const double kRectangularButtonSize = 50.0; // Rectangular button size
const double kRectangularButtonIconSize = 20.0; // Rectangular button icon size
const Color kRectangularButtonColor = kPrimaryColor; // Rectangular button color
const Color kFooterButtonColor = kPrimaryColor; // Footer button color
final TextStyle kFooterButtonTextStyle =
    kTextStyles.copyWith(color: Colors.white); // Footer button text style
