import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/core/values/app_values.dart';
import 'package:oop_calculator/core/values/font_sizes.dart';
import 'package:oop_calculator/core/values/size_config.dart';
import 'package:oop_calculator/data/services/calculator_service/normal_calculator.dart';
import 'package:oop_calculator/modules/basic_calculator/views/basic_calculator.dart';
import 'package:oop_calculator/modules/scientific_calculator/views/Scientific_calculator.dart';
import 'package:oop_calculator/widgets/custom_elevated_button.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig=SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppValues.padding),
                 width: SizeConfig.screenWidth,
                 child: ElevatedCustomButton(
                     buttonHeight: AppValues.buttonVerticalPadding,
                 text:AppStrings.simpleCalculator,
                 fontsize: FontSizes.fontSizeLarge,
                   function: ((){
                 //  Get.to=>BasicCalculatorView();
                     Get.to(()=>BasicCalculatorView());
                     }
                   ),
                 ),
               ),

         SizedBox(height: AppValues.height_16,),

          Container(
            padding: EdgeInsets.symmetric(horizontal: AppValues.padding),
            width: SizeConfig.screenWidth,
            child: ElevatedCustomButton(
              buttonHeight: AppValues.buttonVerticalPadding,
              text:AppStrings.scientificCalculator,
              fontsize: FontSizes.fontSizeLarge,
              function: ((){
                //  Get.to=>BasicCalculatorView();
                Get.to(()=>ScientificCalcualtorView());
              }
              ),
            ),
          ),











        ],

      ) ,


    );
  }
}