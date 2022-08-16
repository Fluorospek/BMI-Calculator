import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;
  double _bmi = 0;
  String BMIcalculator() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Result() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underwieght';
    }
  }

  String Advice() {
    if (_bmi >= 25) {
      return 'You have higher than normal weight';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight';
    } else {
      return 'You have lower than normal weight';
    }
  }
}
