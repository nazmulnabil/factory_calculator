import 'package:oop_calculator/data/services/calculator_service/scientific_calculator.dart';
import 'normal_calculator.dart';

abstract class Calculator {
  factory Calculator(String type) {
    if (type == 'scientific') return ScientificCalculator();
    if (type =="basic") return BasicCalculator();

    throw 'Can\'t create $type.';
  }


 // num get result;

  double? doCalculate(double leftOperand,double rightOperand,operator);

}