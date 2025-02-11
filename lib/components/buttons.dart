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
      constraints: BoxConstraints.tightFor(
        width: kRectangularButtonSize,
        height: kRectangularButtonSize,
      ),
      fillColor: kRectangularButtonColor,
      child: Icon(
        icon,
        size: kRectangularButtonIconSize,
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
        color: kFooterButtonColor,
        child: Center(
          child: Text(
            buttonText,
            style: kFooterButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
