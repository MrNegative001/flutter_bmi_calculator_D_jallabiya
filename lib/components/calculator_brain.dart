import 'constants.dart';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    double heightInMeters = height / 100;
    _bmi = weight / (heightInMeters * heightInMeters);
    return _bmi.toStringAsFixed(1);
  }

  bmiResult() {
    if (_bmi < 18.5) return 'Underweight';
    if (_bmi >= 18.5 && _bmi < 25) return 'Normal';
    if (_bmi > 25 && _bmi < 30) return 'Overweight';
    return 'Obese';
  }

  bmiColorResult() {
    if (_bmi < 18.5) return kUnderweightColor;
    if (_bmi >= 18.5 && _bmi < 25) return kNormalColor;
    if (_bmi > 25 && _bmi < 30) return kOverweightColor;
    return kObeseColor;
  }

  bmiFeedBack() {
    if (_bmi < 18.5) {
      return 'A _BMI of less than 18.5 indicates that you are underweight,'
          'so you may need to put on some weight. You are recommended to ask your'
          'doctor or a dietitian for advice.';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'A _BMI of "$_bmi" indicates that you are at a healthy weight for'
          ' your height. By maintaining a healthy weight, you lower your risk '
          'of developing serious health problems.';
    } else if (_bmi > 25 && _bmi < 30) {
      return 'A BMI of "$_bmi" indicates that you are slightly overweight. '
          'You may be advised to lose some weight for health reasons. You are '
          'recommended to talk to your doctor or a dietitian for advice.';
    } else {
      return 'A BMI of "$_bmi" indicates that you are heavily overweight. '
          'Your health may be at risk if you do not lose weight. You are '
          'recommended to talk to your doctor or a dietitian for advice';
    }
  }
}
