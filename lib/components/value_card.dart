import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'buttons.dart';

class ValueCard extends StatelessWidget {
  const ValueCard({
    required this.title,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  });

  final String title;
  final int value;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Get.find<ThemeController>().isDarkMode.value
          ? kCardColorDark
          : kCardColorLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title, style: kTextStyles),
          Text('$value', style: kLargeTextStyles),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RectangularButton(
                  icon: FontAwesomeIcons.minus, onTap: onDecrement),
              SizedBox(width: 30),
              RectangularButton(
                  icon: FontAwesomeIcons.plus, onTap: onIncrement),
            ],
          ),
        ],
      ),
    );
  }
}
