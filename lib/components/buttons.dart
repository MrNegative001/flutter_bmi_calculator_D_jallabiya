import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/components/constants.dart';

class RectangularButton extends StatelessWidget {
  RectangularButton({required this.icon, required this.onTap});
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onTap(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      fillColor: kActiveColor,
      child: Icon(
        icon,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}

class FooterButton extends StatelessWidget {
  FooterButton({required this.buttonText, required this.onPressed});
  final Function onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Card(
        color: kActiveColor,
        child: Center(
          child: Text(
            buttonText,
            style: kTextStyles.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
