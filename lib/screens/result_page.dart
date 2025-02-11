import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/components/constants.dart';
import 'package:get/get.dart';
import '../main.dart'; // Import ThemeController
import '../components/buttons.dart';
import '../components/appbar_components.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {super.key,
      required this.resultValue,
      required this.bmiResult,
      required this.feedback,
      required this.resulColor});

  final String resultValue;
  final String bmiResult;
  final String feedback;
  final Color resulColor;

  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    double percentage = double.parse(resultValue) / 100;
    if (percentage > 1.0) {
      percentage = 1.0;
    } else if (percentage < 0.0) {
      percentage = 0;
    }
    return Scaffold(
      appBar: AppBar(
        actions: [
          appBarActions(themeController: themeController),
          SizedBox(width: 23),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your BMI result is:',
              style: kResultTextStyle.copyWith(fontSize: 30, color: resulColor),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: CircularPercentIndicator(
                radius: 150.0,
                lineWidth: 30,
                backgroundColor: resulColor.withOpacity(0.2),
                percent: percentage,
                animation: true,
                animationDuration: 1200,
                circularStrokeCap: CircularStrokeCap.round,
                center: TweenAnimationBuilder<double>(
                  tween:
                      Tween<double>(begin: 0, end: double.parse(resultValue)),
                  duration: Duration(milliseconds: 1200),
                  builder: (BuildContext context, double value, Widget? child) {
                    return Text(
                      value.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: resulColor,
                      ),
                    );
                  },
                ),
                progressColor: resulColor,
                footer: Text(
                  bmiResult.toUpperCase(),
                  style: kResultTextStyle.copyWith(color: resulColor),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 4,
              child: Card(
                color: themeController.isDarkMode.value
                    ? kCardColorDark
                    : kCardColorLight,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    feedback,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Expanded(
              child: FooterButton(
                buttonText: 'RE-CALCULATE',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
