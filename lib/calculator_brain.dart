import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Your  BMI indicates that you are heavily overweight.Your health may be at risk if you don\'t lose weight. You are recommended to ask your doctor for advice.';
    }
    if (_bmi >= 25) {
      return 'Your  BMI indicates that you are slightly overweight.You are advised to lose some weight for health reasons.You are recommended to ask your doctor  for advice.';
    }
    else if (_bmi >= 18.5) {
      return 'Your BMI indicates that you are healthy.By maintaining a healthy weight, you lower your risk of developing serious health problems.';
    } else {
      return 'Your BMI Indicates that you are underweight. You are advised to put on some weight .You are recommended to ask your doctor  for advice.';
    }
  }
}
