import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/components/constants.dart';
import '../main.dart'; // Import ThemeController

class appBarTitle extends StatelessWidget {
  const appBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome user', style: TextStyle(fontSize: 15)),
        Text('BMI Calculator',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class appBarActions extends StatelessWidget {
  const appBarActions({
    super.key,
    required this.themeController,
  });

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: themeController.isDarkMode.value
            ? Color(0xFF373737) // Dark mode container
            : Colors.white, // Light mode container
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.wb_sunny,
              color: themeController.isDarkMode.value
                  ? Color(0xFF242424)
                  : kActiveColor,
            ),
            onPressed: themeController.setLightMode,
          ),
          IconButton(
            icon: Icon(
              Icons.nightlight_round,
              color: themeController.isDarkMode.value
                  ? kActiveColor
                  : Color(0xFFD1D9E6),
            ),
            onPressed: themeController.setDarkMode,
          ),
        ],
      ),
    );
  }
}
