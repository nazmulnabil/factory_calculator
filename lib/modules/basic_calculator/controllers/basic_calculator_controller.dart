import 'package:get/get.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/data/services/calculator_service/calculator.dart';

class BasicCalculatorController extends GetxController{
     String calculatorType=AppStrings.baSic;
     String operator="";
     double? leftOperand;
     double? rightOperand;
     String value="";
     String? resultValue;
     RxString input="".obs;
     RxString result="".obs;
     bool keyPressed=false;
     bool operatorPressed=false;
     bool equalsPressed=false;




     getResult(double? leftOperand,double? rightOperand,String operator){
          //print("inside getResult");
          //print(">>>>>>>>>$leftOperand");
          //print(">>>>>>>>>$rightOperand");
          //print(">>>>>>>>>$operator");

          //  Calculator(calculatorType);

          result.value=Calculator(calculatorType).doCalculate(leftOperand!, rightOperand!, operator).toString();

     }

     void buttonPressed(String buttonText) {
          //  if(buttonText==)
          if(buttonText==AppStrings.buttonCancelAll){
               input.value="";
               operatorPressed=false;

          }



          if(buttonText==AppStrings.buttonAddition||
              buttonText==AppStrings.buttonSubtraction||
              buttonText==AppStrings.buttonMultiplication||
              buttonText==AppStrings.buttonDivision) {


                if(input.value!=AppStrings.buttonDecimal&&input.value!=""&& keyPressed==true && operatorPressed==false) {

                     if(
                     (!input.value.contains(AppStrings.buttonAddition))&&
                         (!input.value.contains(AppStrings.buttonSubtraction))&&
                         (!input.value.contains(AppStrings.buttonMultiplication))&&
                         (!input.value.contains(AppStrings.buttonDivision))) {

                         input.value += buttonText;
                         leftOperand=double.parse(value.toString()) ;
                         //print("leftOperand>>>>>$leftOperand");
                         operator=buttonText;
                       //  print(operator);
                         operatorPressed=true;
                         value='';
                      //   print(keyPressed);
                       //  print(operatorPressed);
                      }
                     }

                if(equalsPressed==true&&rightOperand!=null){
                    input.value="";
                    value='';
                    equalsPressed=false;
                    keyPressed=false;
                    operatorPressed=false;
                }
          }


          else if(buttonText==AppStrings.buttonDecimal){
            {
            input.value += buttonText;
            value += buttonText;
           }
    }

          else if(buttonText==AppStrings.buttonEquals){

               //print("equals pressed");
               rightOperand=double.parse(value.toString());
            //   print("rightOperand>>>>>>>>>$rightOperand");
               input.value="";
               value='';

            //   print(leftOperand);
            //   print(rightOperand);
            //   print(operator);
               operatorPressed=false;
               getResult(leftOperand!,rightOperand!,operator);
             //  print("result>>>>${result.value}") ;
          }


          else if(
          buttonText==AppStrings.buttonOne||
              buttonText==AppStrings.buttonTwo||
              buttonText==AppStrings.buttonThree||
              buttonText==AppStrings.buttonFour||
              buttonText==AppStrings.buttonFive||
              buttonText==AppStrings.buttonSix||
              buttonText==AppStrings.buttonSeven||
              buttonText==AppStrings.buttonEight||
              buttonText==AppStrings.buttonEight||
              buttonText==AppStrings.buttonZero||
              buttonText==AppStrings.buttonDoubleZero||
              buttonText==AppStrings.buttonNine
          ){
               keyPressed=true;
               input.value += buttonText;
               value +=buttonText;
          }





     }




}