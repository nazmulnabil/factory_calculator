import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oop_calculator/modules/scientific_calculator/controllers/scientific_calculator_controller.dart';

// ignore: must_be_immutable
class ButtonCalculatorScientific extends StatelessWidget {
  String buttonText;
  double buttonHeight;
  Color buttonColor;


  ButtonCalculatorScientific(this.buttonText, this.buttonHeight, this.buttonColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height:MediaQuery.of(context).size.height *.1* buttonHeight,
    //  color: buttonColor,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape:RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
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
    );
  }



}
