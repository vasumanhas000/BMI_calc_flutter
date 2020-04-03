import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';
class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = (weight / pow(height, 2))*10000;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    }
    else if (_bmi > 18.5) {
      return 'Normal';
    }
    else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal bodyweight.Try to exercise more.';
    }
    else if (_bmi > 18.5) {
      return 'You have a normal bodyweight.Good job!';
    }
    else {
      return 'You have a lower than normal bodyweight.You can eat a bit more.';
    }
  }
}