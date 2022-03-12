import 'package:flutter/material.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/modules/scientific_calculator/widgets/scientific_calculator_buttonlist.dart';
import 'package:oop_calculator/modules/scientific_calculator/widgets/scientific_result_view.dart';

class ScientificCalcualtorView extends StatelessWidget {
  const ScientificCalcualtorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.scientificCalculator)),
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
          //input output view
          ScientificResultView(),
          //buttons
          ScientificCalculatorButtonList()
        ],
      ),
    );
  }
}
