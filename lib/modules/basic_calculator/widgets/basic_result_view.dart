import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oop_calculator/core/values/app_values.dart';
import 'package:oop_calculator/modules/basic_calculator/controllers/basic_calculator_controller.dart';

class BasicResultView extends StatelessWidget {
  const BasicResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  [
            Obx(()=> Text(
              Get.find<BasicCalculatorController>().input.toString(),style: const TextStyle(fontSize: 38),),),
            const SizedBox(height: AppValues.height_16,),
            Obx(()=>  Text(Get.find<BasicCalculatorController>().result.toString(),style: const TextStyle(fontSize: 38),),),
          ],
        )
      ],
    );
  }
}
