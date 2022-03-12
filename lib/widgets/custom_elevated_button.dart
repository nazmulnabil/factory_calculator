import 'package:flutter/material.dart';
import 'package:oop_calculator/core/values/app_colors.dart';

// ignore: must_be_immutable
class ElevatedCustomButton extends StatelessWidget {
  String? text;
  double? fontsize;
  double buttonHeight;
  // ignore: prefer_typing_uninitialized_variables
  var function;
  ElevatedCustomButton(
      {this.text,
        this.fontsize,
        required this.buttonHeight,
        this.function,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          primary: AppColors.baseThemeColor,
        ),
        onPressed: function,

        //  Get.to(QuestionPage(), binding: QuestionPageBinding())),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: buttonHeight),
          child: Text(
            text!,
            style: TextStyle(
                color:AppColors.whiteTextColor, fontSize: fontsize),
          ),
        ));
  }
}
