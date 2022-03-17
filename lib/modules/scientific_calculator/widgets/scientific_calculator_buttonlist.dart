import 'package:flutter/material.dart';
import 'package:oop_calculator/core/values/app_colors.dart';
import 'package:oop_calculator/core/values/app_strings.dart';
import 'package:oop_calculator/widgets/button_builder_scientific.dart';

class ScientificCalculatorButtonList extends StatelessWidget {
  const ScientificCalculatorButtonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: ButtonCalculatorScientific(
                    AppStrings.buttoNsine, 1, AppColors.baseThemeColor)),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttoNcosine, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttoNtangent, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonModulous, 1, AppColors.baseThemeColor),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ButtonCalculatorScientific(
                    AppStrings.buttoNsquare, 1, AppColors.baseThemeColor)),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonCube, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttoNsquareRoot, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonLog, 1, AppColors.baseThemeColor),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ButtonCalculatorScientific(
                    AppStrings.buttonOne, 1, AppColors.baseThemeColor)),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonTwo, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonThree, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonAddition, 1, AppColors.baseThemeColor),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ButtonCalculatorScientific(
                    AppStrings.buttonFour, 1, AppColors.baseThemeColor)),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonFive, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonSix, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonSubtraction, 1, AppColors.baseThemeColor),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ButtonCalculatorScientific(
                    AppStrings.buttonSeven, 1, AppColors.baseThemeColor)),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonEight, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonNine, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonMultiplication, 1, AppColors.baseThemeColor),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ButtonCalculatorScientific(
                    AppStrings.buttonCancelAll, 1, AppColors.baseThemeColor)),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonCancel, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonDecimal, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonDivision, 1, AppColors.baseThemeColor),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ButtonCalculatorScientific(
                    AppStrings.buttonZero, 1, AppColors.baseThemeColor)),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonDoubleZero, 1, AppColors.baseThemeColor),
            ),
            Expanded(
              child: ButtonCalculatorScientific(
                  AppStrings.buttonEquals, 1, AppColors.baseThemeColor),
            ),
          ],
        ),
      ],
    );
  }
}
