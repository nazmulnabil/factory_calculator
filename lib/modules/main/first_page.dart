import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oop_calculator/core/values/app_colors.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/core/values/app_values.dart';
import 'package:oop_calculator/core/values/font_sizes.dart';
import 'package:oop_calculator/core/values/size_config.dart';
import 'package:oop_calculator/modules/basic_calculator/bindings/basic_calculator_binding.dart';
import 'package:oop_calculator/modules/basic_calculator/views/basic_calculator.dart';
import 'package:oop_calculator/modules/scientific_calculator/bindings/scientific_calculator_bindings.dart';
import 'package:oop_calculator/modules/scientific_calculator/views/Scientific_calculator.dart';
import 'package:oop_calculator/widgets/custom_elevated_button.dart';
import 'package:oop_calculator/widgets/custom_outlined_button.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig=SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.baseThemeColor,
        title: const Text(AppStrings.calCulator),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.width/3,
            width: MediaQuery.of(context).size.width/3,
            decoration: const BoxDecoration(

              image: DecorationImage(
                image: AssetImage(
                    'assets/images/calculator.png'),
               fit: BoxFit.fill,
              ),
             // shape: BoxShape.circle,
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(AppValues.buttonTextPadding),
            child: Text("Choose calculator mode according to your need.",
            style: TextStyle(
              fontSize:FontSizes.fontSizeXXlarge,
              fontWeight: FontWeight.w500
            ),
            ),
          ),

          //basic calculator button
              Container(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.padding),
                 width: SizeConfig.screenWidth,
                 child: ElevatedCustomButton(
                      buttonHeight: AppValues.buttonVerticalPadding,
                      text:AppStrings.simpleCalculator,
                      fontsize: FontSizes.fontSizeLarge,
                      function: ((){
                 //  Get.to=>BasicCalculatorView();
                      Get.to(()=>const BasicCalculatorView(),binding: BasicCalculatorBinding());
                     }
                   ),
                 ),
               ),

         const SizedBox(height: AppValues.height_16,),

          //basic calculator button
          Container(
             padding: const EdgeInsets.symmetric(horizontal: AppValues.padding),
             width: SizeConfig.screenWidth,
             child: OutlinedCustomButton(
                buttonHeight: AppValues.buttonVerticalPadding,
                text:AppStrings.scientificCalculator,
                fontsize: FontSizes.fontSizeLarge,
                function: ((){
                Get.to(()=>const ScientificCalcualtorView(),binding: ScientificCalculatorBinding());
                }
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
