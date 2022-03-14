import 'package:flutter/material.dart';
import 'package:oop_calculator/core/values/app_colors.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/modules/basic_calculator/widgets/basic_calculator_buttonlist.dart';
import 'package:oop_calculator/modules/basic_calculator/widgets/basic_result_view.dart';

class BasicCalculatorView extends StatelessWidget {
  const BasicCalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  Get.lazyPut(()=>BasicCalculatorController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: AppColors.baseThemeColor,
          title: const Text(AppStrings.simpleCalculator)),
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
             children:  const <Widget>[
               //input output view
               BasicResultView(),
               //buttons
               BasicCalculatorButtonList(),
        ],
      ),
    );
  }
}
