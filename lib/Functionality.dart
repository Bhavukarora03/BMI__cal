import 'dart:math';


class CalBrain {
  CalBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBmi() {
   _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String results() {
    if (_bmi >= 25) {
      return 'OVER-WEIGHT';
    } else if (_bmi > 18.5) {
      return 'FUCKING-PERFECT';
    } else {
      return 'UNDER-WEIGHT';
    }
  }

  String quotesSheesh() {
    if (_bmi >= 25) {
      return 'HEY BUD, TRY TO EAT LESS \n DRINK GREEN-TEA\n JOIN A GYM MAYBE :)';
    } else if (_bmi > 18.5) {
      return 'DAMN, YOU ARE SO PERFECT \nI HATE YOU :)';
    } else {
      return 'HEY BUD, ITS OKAY, \n BUT YOU SHOULD TRY EATING MORE ❤';
    }
  }
}
