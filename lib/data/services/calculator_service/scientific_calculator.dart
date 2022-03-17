import 'package:get/get_utils/src/extensions/double_extensions.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/data/services/calculator_service/calculator.dart';
import 'dart:math';

class ScientificCalculator implements Calculator {
  @override
  double? doCalculate(double leftOperand, double rightOperand, operator) {
    //  print("inside basic do calculate");
    //  print(leftOperand);
    //  print(rightOperand);
    //   print(operator);
    switch (operator) {
      case AppStrings.buttonAddition:
        return Addition(leftOperand, rightOperand);

      case AppStrings.buttonSubtraction:
        return Subtraction(leftOperand, rightOperand);

      case AppStrings.buttonMultiplication:
        return Multiplication(leftOperand, rightOperand);

      case AppStrings.buttonDivision:
        return Division(leftOperand, rightOperand);

      case AppStrings.buttoNsine:
        return sineFunction(leftOperand, rightOperand);

      case AppStrings.buttoNcosine:
        return cosFunction(leftOperand, rightOperand);

      case AppStrings.buttoNtangent:
        return tanFunction(leftOperand, rightOperand);

      case AppStrings.buttonLog:
        return logFunction(leftOperand, rightOperand);

      case AppStrings.buttoNsquareRoot:
        return sqrtFunction(leftOperand, rightOperand);

      case AppStrings.buttoNsquare:
        return squareFunction(leftOperand, rightOperand);
      case AppStrings.buttonCube:
        return cubeFunction(leftOperand, rightOperand);

      case AppStrings.buttonModulous:
        return modFunction(leftOperand, rightOperand);
    }
  }

  double? Addition(double leftOperand, double rightOperand) {
    return (leftOperand + rightOperand).toPrecision(3);
  }

  double? Subtraction(double leftOperand, double rightOperand) {
    return (leftOperand - rightOperand).toPrecision(3);
  }

  double? Multiplication(double leftOperand, double rightOperand) {
    return (leftOperand * rightOperand).toPrecision(3);
  }

  double? Division(double leftOperand, double rightOperand) {
    return (leftOperand / rightOperand).toPrecision(3);
  }

  double? sineFunction(double leftOperand, double rightOperand) {
    return (leftOperand * sin(pi / 180 * rightOperand)).toPrecision(3);
  }

  double? cosFunction(double leftOperand, double rightOperand) {
    return (leftOperand * (cos(pi / 180 * rightOperand))).toPrecision(3);
  }

  double? tanFunction(double leftOperand, double rightOperand) {
    if (rightOperand == 90) {
      return null;
    } else {
      return (leftOperand * (tan(pi / 180 * rightOperand))).toPrecision(3);
    }
  }

  double? ln10Function(double leftOperand, double rightOperand) {
    return (leftOperand * (log(rightOperand))).toPrecision(3);
  }

  double? modFunction(double leftOperand, double rightOperand) {
    return (leftOperand % rightOperand).toPrecision(3);
  }

  double? sqrtFunction(double leftOperand, double rightOperand) {
    return (leftOperand * (sqrt(rightOperand))).toPrecision(3);
  }

  double? squareFunction(double leftOperand, double rightOperand) {
    return (leftOperand * leftOperand).toPrecision(3);
  }

  double? cubeFunction(double leftOperand, double rightOperand) {
    return (leftOperand * leftOperand * leftOperand).toPrecision(3);
  }

  double? logFunction(double leftOperand, double rightOperand) {
    return (leftOperand * (rightOperand * rightOperand * rightOperand))
        .toPrecision(3);
  }
}
