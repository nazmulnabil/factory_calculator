import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/core/values/app_values.dart';
import 'package:oop_calculator/modules/scientific_calculator/controllers/scientific_calculator_controller.dart';
import 'package:oop_calculator/widgets/button_builder.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';



class ScientificCalcualtorView extends StatelessWidget {
  const ScientificCalcualtorView({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>ScientificCalculatorController());
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.scientificCalculator)),
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[


          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:  [

                  Obx(()=> Text(

                    Get.find<ScientificCalculatorController>().input.toString(),style: TextStyle(fontSize: 38),),),
                  SizedBox(height: AppValues.height_16,),
                  Obx(()=>  Text(Get.find<ScientificCalculatorController>().result.toString(),style: TextStyle(fontSize: 38),),),


                ],
              )
            ],
          ),


          Column(
            children: [
              Row(
                children: [
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonOne, 1, Colors.redAccent)),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonTwo, 1, Colors.blue),),
                  Expanded(child:   ButtonCalculatorScientific(AppStrings.buttonThree, 1, Colors.blue),),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonAddition, 1, Colors.blue),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonFour, 1, Colors.redAccent)),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonFive, 1, Colors.blue),),
                  Expanded(child:   ButtonCalculatorScientific(AppStrings.buttonSix, 1, Colors.blue),),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonSubtraction, 1, Colors.blue),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonSeven, 1, Colors.redAccent)),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonEight, 1, Colors.blue),),
                  Expanded(child:   ButtonCalculatorScientific(AppStrings.buttonNine, 1, Colors.blue),),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonMultiplication, 1, Colors.blue),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonCancelAll, 1, Colors.redAccent)),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonCancel, 1, Colors.blue),),
                  Expanded(child:   ButtonCalculatorScientific(AppStrings.buttonDecimal, 1, Colors.blue),),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonDivision, 1, Colors.blue),),
                ],
              ),

              Row(
                children: [
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonZero, 1, Colors.redAccent)),
                  Expanded(child: ButtonCalculatorScientific(AppStrings.buttonDoubleZero, 1, Colors.blue),),
                  Expanded(child:   ButtonCalculatorScientific(AppStrings.buttonEquals, 1, Colors.blue),),

                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
