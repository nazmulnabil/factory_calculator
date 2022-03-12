import 'package:get/get.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/data/services/calculator_service/calculator.dart';


class ScientificCalculatorController extends GetxController{

  String calculatorType="scientific";
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
  //  print("inside getResult");
 //   print(">>>>>>>>> leftOperand$leftOperand");
  //  print(">>>>>>>>> rightOperand$rightOperand");
  //  print(">>>>>>>>> operrator$operator");
    //  Calculator(calculatorType);
    result.value=Calculator(calculatorType).doCalculate(leftOperand!, rightOperand!, operator).toString();
  }

  void buttonPressed(String buttonText) {
    if(buttonText==AppStrings.buttonCancelAll){
       input.value="";
       operatorPressed=false;
    }
    else if(buttonText==AppStrings.buttonCancel){
         if(input.value.length>0){
            input.value=input.value.substring(0, input.value.length - 1);
       }
    }
    else if(buttonText==AppStrings.buttonAddition||
        buttonText==AppStrings.buttonSubtraction||
        buttonText==AppStrings.buttonMultiplication||
        buttonText==AppStrings.buttonDivision||
        buttonText==AppStrings.buttoNsquare||
        buttonText==AppStrings.buttonCube||
        buttonText==AppStrings.buttonModulous) {
          if(input.value!=AppStrings.buttonDecimal&&input.value!=""&& keyPressed==true && operatorPressed==false) {
             if(
               (!input.value.contains(AppStrings.buttonAddition))&&
               (!input.value.contains(AppStrings.buttonSubtraction))&&
               (!input.value.contains(AppStrings.buttonMultiplication))&&
               (!input.value.contains(AppStrings.buttonDivision))) {

                  input.value += buttonText;
                  leftOperand=double.parse(value.toString()) ;
            //    print("leftOperand>>>>>$leftOperand");
                  operator=buttonText;
       //   print(operator);
                  operatorPressed=true;
                  value='';
        //  print(keyPressed);
         // print(operatorPressed);
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

   else if(buttonText==AppStrings.buttoNsine||
        buttonText==AppStrings.buttoNcosine||
        buttonText==AppStrings.buttoNtangent||
        buttonText==AppStrings.buttoNsquareRoot||
        buttonText==AppStrings.buttonLog) {

     //code to be executed
         if(input.value!=AppStrings.buttonDecimal && operatorPressed==false ){

             if(input.value==''){
                input.value += buttonText;
                leftOperand=double.parse(AppStrings.buttonOne.toString()) ;
                //  print("leftOperand>>>>>$leftOperand");
                operator=buttonText;
                //     print(operator);
               keyPressed==true;
               operatorPressed=true;
               value='';
               print(keyPressed);
               print(operatorPressed);
         } else{
                input.value += buttonText;
                leftOperand=double.parse(value.toString()) ;
            //    print("leftOperand>>>>>$leftOperand");
                operator=buttonText;
                print(operator);
                keyPressed==true;
                operatorPressed=true;
                 value='';
                 print(keyPressed);
                 print(operatorPressed);
                }
              }
            }


   else if(buttonText==AppStrings.buttonDecimal){
         input.value += buttonText;
         value += buttonText;

    }

    else if(buttonText==AppStrings.buttonEquals){


      if(operator==AppStrings.buttoNsquare||operator==AppStrings.buttonCube){
        print("equals pressed");
        rightOperand=double.parse(AppStrings.buttonOne.toString());
        print("rightOperand>>>>>>>>>$rightOperand");
        input.value="";
        value='';

       print(leftOperand);
       print(rightOperand);
       print(operator);
       operatorPressed=false;
       getResult(leftOperand!,rightOperand!,operator);

       print("result>>>>${result.value}") ;
      }
      else{
        print("equals pressed");
        rightOperand=double.parse(value.toString());
        print("rightOperand>>>>>>>>>$rightOperand");
        input.value="";
        value='';
        print(leftOperand);
        print(rightOperand);
        print(operator);
        operatorPressed=false;
        getResult(leftOperand!,rightOperand!,operator);
        print("result>>>>${result.value}") ;
      }

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
        buttonText==AppStrings.buttonNine||
        buttonText==AppStrings.buttonZero||
        buttonText==AppStrings.buttonDoubleZero){

        keyPressed=true;
        input.value += buttonText;
        value +=buttonText;
      }
  }





}