import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/core/values/app_values.dart';
import 'package:oop_calculator/modules/basic_calculator/controllers/basic_calculator_controller.dart';
import 'package:oop_calculator/widgets/button_builder.dart';


class BasicCalculatorView extends StatelessWidget {
  const BasicCalculatorView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>BasicCalculatorController());
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.simpleCalculator)),
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[


        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
crossAxisAlignment: CrossAxisAlignment.end,
              children:  [

                Obx(()=> Text(

                  Get.find<BasicCalculatorController>().input.toString(),style: TextStyle(fontSize: 38),),),
                 SizedBox(height: AppValues.height_16,),
                Obx(()=>  Text(Get.find<BasicCalculatorController>().result.toString(),style: TextStyle(fontSize: 38),),),


              ],
            )
          ],
        ),
          

       Column(
         children: [
           Row(
             children: [
               Expanded(child: ButtonCalculator(AppStrings.buttonOne, 1, Colors.redAccent)),
               Expanded(child: ButtonCalculator(AppStrings.buttonTwo, 1, Colors.blue),),
               Expanded(child:   ButtonCalculator(AppStrings.buttonThree, 1, Colors.blue),),
               Expanded(child: ButtonCalculator(AppStrings.buttonAddition, 1, Colors.blue),),
             ],
           ),
           Row(
             children: [
               Expanded(child: ButtonCalculator(AppStrings.buttonFour, 1, Colors.redAccent)),
               Expanded(child: ButtonCalculator(AppStrings.buttonFive, 1, Colors.blue),),
               Expanded(child:   ButtonCalculator(AppStrings.buttonSix, 1, Colors.blue),),
               Expanded(child: ButtonCalculator(AppStrings.buttonSubtraction, 1, Colors.blue),),
             ],
           ),
           Row(
             children: [
               Expanded(child: ButtonCalculator(AppStrings.buttonSeven, 1, Colors.redAccent)),
               Expanded(child: ButtonCalculator(AppStrings.buttonEight, 1, Colors.blue),),
               Expanded(child:   ButtonCalculator(AppStrings.buttonNine, 1, Colors.blue),),
               Expanded(child: ButtonCalculator(AppStrings.buttonMultiplication, 1, Colors.blue),),
             ],
           ),
           Row(
             children: [
               Expanded(child: ButtonCalculator(AppStrings.buttonCancelAll, 1, Colors.redAccent)),
               Expanded(child: ButtonCalculator(AppStrings.buttonCancel, 1, Colors.blue),),
               Expanded(child:   ButtonCalculator(AppStrings.buttonDecimal, 1, Colors.blue),),
               Expanded(child: ButtonCalculator(AppStrings.buttonDivision, 1, Colors.blue),),
             ],
           ),

           Row(
             children: [
               Expanded(child: ButtonCalculator(AppStrings.buttonZero, 1, Colors.redAccent)),
               Expanded(child: ButtonCalculator(AppStrings.buttonDoubleZero, 1, Colors.blue),),
               Expanded(child:   ButtonCalculator(AppStrings.buttonEquals, 1, Colors.blue),),

             ],
           )
         ],
       )

        ],
      ),
    );
  }
}
