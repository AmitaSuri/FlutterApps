import 'dart:math';

class CalculatBMI {
  final double height;
  final double weight;
  double _bmi;

  CalculatBMI({this.height, this.weight});

  String getBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are on the higher side of body weight. Please try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Keep it up!';
    } else {
      return 'You are on the lower side of body weight. Please try to gain some';
    }
  }
}