import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/components/calculator_brain.dart';
import 'package:flutter_bmi_calculator/components/constants.dart';
import 'package:flutter_bmi_calculator/screens/result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../main.dart'; // Import ThemeController
import '../components/appbar_components.dart';
import '../components/buttons.dart';
import '../components/value_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

int height = 160;
int weight = 60;
int age = 20;

enum Gender { male, female }

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController themeController = Get.find();

  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: appBarTitle(),
        ),
        actions: [
          appBarActions(themeController: themeController),
          SizedBox(width: 23),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selectedGender = Gender.male;
                      }),
                      child: Card(
                        color: selectedGender == Gender.male
                            ? kPrimaryColor
                            : kCardColorLight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.mars,
                                size: 25,
                                color: selectedGender == Gender.male
                                    ? kCardColorLight
                                    : kPrimaryColor),
                            SizedBox(width: 15),
                            Text(
                              'MALE',
                              style: kTextStyles.copyWith(
                                  color: selectedGender == Gender.male
                                      ? kCardColorLight
                                      : kPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selectedGender = Gender.female;
                      }),
                      child: Card(
                        color: selectedGender == Gender.female
                            ? kPrimaryColor
                            : kCardColorLight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 25,
                              color: selectedGender == Gender.female
                                  ? kCardColorLight
                                  : kPrimaryColor,
                            ),
                            SizedBox(width: 15),
                            Text(
                              'FEMALE',
                              style: kTextStyles.copyWith(
                                color: selectedGender == Gender.female
                                    ? kCardColorLight
                                    : kPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              flex: 10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Card(
                        color: themeController.isDarkMode.value
                            ? kCardColorDark
                            : kCardColorLight,
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Text('HEIGHT', style: kTextStyles)),
                              Expanded(
                                flex: 9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: -1,
                                      child: SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: kSliderActiveColor,
                                          inactiveTrackColor:
                                              kSliderInactiveColor,
                                          overlayColor:
                                              kSliderOverlayColor, // Light teal overlay
                                          trackHeight:
                                              kSliderTrackHeight, // Thickness of the track
                                          thumbShape:
                                              SliderComponentShape.noThumb,
                                        ),
                                        child: Slider(
                                          value: height.toDouble(),
                                          min: 80.0,
                                          max: 240.0,
                                          onChanged: (double value) {
                                            setState(() {
                                              height = value.round();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: List.generate(
                                          9, (index) => HorizontalLine()),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('240', style: kRulerTextStyle),
                                        Text('220', style: kRulerTextStyle),
                                        Text('200', style: kRulerTextStyle),
                                        Text('180', style: kRulerTextStyle),
                                        Text('160', style: kRulerTextStyle),
                                        Text('140', style: kRulerTextStyle),
                                        Text('120', style: kRulerTextStyle),
                                        Text('100', style: kRulerTextStyle),
                                        Text('080', style: kRulerTextStyle),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ValueCard(
                            title: 'WEIGHT',
                            value: weight,
                            onDecrement: () => setState(() =>
                                weight = weight > 35 ? weight - 1 : weight),
                            onIncrement: () => setState(() =>
                                weight = weight < 300 ? weight + 1 : weight),
                          ),
                        ),
                        SizedBox(height: 15),
                        Expanded(
                          child: ValueCard(
                            title: 'AGE',
                            value: age,
                            onDecrement: () =>
                                setState(() => age = age > 10 ? age - 1 : age),
                            onIncrement: () =>
                                setState(() => age = age < 75 ? age + 1 : age),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: FooterButton(
                buttonText: 'CALCULATE',
                onPressed: () {
                  CalculatorBrain calculate =
                      CalculatorBrain(height: height, weight: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(
                      resultValue: calculate.calculateBMI(),
                      bmiResult: calculate.bmiResult(),
                      feedback: calculate.bmiFeedBack(),
                      resulColor: calculate.bmiColorResult(),
                    );
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 3,
      width: 50,
      color: kTextColor,
    );
  }
}
