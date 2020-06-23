import 'dart:math';

class CalcBrain {
  CalcBrain({
    this.height,
    this.weight,
  }); //Constructor gemmer det i en property

  final int height;
  final int weight;

  double _bmi;

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overvægtig';
    } else if (_bmi > 18.5) {
      return 'Normal vægtig';
    } else {
      return 'Undervægtig';
    }
  }

  String getInterpret() {
    if (_bmi >= 25) {
      return 'Du har en højere end normal kropsvægt. Prøv at træne mere.';
    } else if (_bmi > 18.5) {
      return 'Du har en normal kropsvægt. Godt arbejde!';
    } else {
      return 'Du har en lavere kropsvægt end normalt. Du kan spise lidt mere.';
    }
  }
}
