import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oop_calculator/modules/scientific_calculator/controllers/scientific_calculator_controller.dart';

class ButtonCalculatorScientific extends StatelessWidget {
  String buttonText;
  double buttonHeight;
  Color buttonColor;


  ButtonCalculatorScientific(this.buttonText, this.buttonHeight, this.buttonColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height:MediaQuery.of(context).size.height *.1* buttonHeight,
      color: buttonColor,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color: Colors.white,
                      width: 1,
                      style: BorderStyle.solid
                  )
              ),),

            onPressed: () =>Get.find<ScientificCalculatorController>().buttonPressed(buttonText),
            child: Text(
              buttonText,
              style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
              ),
            )
        ),
      ),
    );
  }



}
