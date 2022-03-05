import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/data/services/calculator_service/calculator.dart';

class ScientificCalculator implements Calculator {
  @override
  // TODO: implement area
  num get result => throw UnimplementedError();

  @override
  double? doCalculate(double leftOperand, double rightOperand, operator) {

    print("inside basic do calculate");
    print(leftOperand);
    print(rightOperand);
    print(operator);
    switch(operator){
      case AppStrings.buttonAddition:
        return Addition(leftOperand,rightOperand);

      case AppStrings.buttonSubtraction:
        return Subtraction(leftOperand,rightOperand);

      case AppStrings.buttonMultiplication:
        return Multiplication(leftOperand,rightOperand);

      case AppStrings.buttonDivision:
        return Division(leftOperand,rightOperand);







    }

  }

  double? Addition(double leftOperand,double rightOperand) {
    return leftOperand+rightOperand;
  }

  double? Subtraction(double leftOperand,double rightOperand) {
    return leftOperand-rightOperand;
  }


  double? Multiplication(double leftOperand,double rightOperand) {
    return   leftOperand*rightOperand;
  }

  double? Division(double leftOperand,double rightOperand) {
    return  leftOperand/rightOperand;

  }



}
