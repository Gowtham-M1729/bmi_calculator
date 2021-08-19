import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  int height;
  int weight;
  double bmi = 0.0;

  String calculator() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (bmi >= 25)
      return 'OVERWEIGHT';
    else if (bmi > 18.5)
      return 'NORMAL WEIGHT';
    else
      return 'UNDERWEIGHT';
  }

  String result() {
    if (bmi >= 25)
      return 'YOU HAVE OVERWEIGHT BODY NEED HEAVY EXCERCISE';
    else if (bmi > 18.5)
      return 'YOU HAVE NORMAL BODY NEED LEAST EXCERCISE';
    else
      return 'YOU HAVE UNDERWEIGHED BODY NEED TO EAT A BIT MORE';
  }
}
