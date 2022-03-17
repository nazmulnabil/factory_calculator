import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oop_calculator/core/values/app_values.dart';
import 'package:oop_calculator/modules/scientific_calculator/controllers/scientific_calculator_controller.dart';

class ScientificResultView extends StatelessWidget {
  const ScientificResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Obx(
              () => Text(
                Get.find<ScientificCalculatorController>().input.toString(),
                style: const TextStyle(fontSize: 38),
              ),
            ),
            const SizedBox(
              height: AppValues.height_16,
            ),
            Obx(
              () => Text(
                Get.find<ScientificCalculatorController>().result.toString(),
                style: const TextStyle(fontSize: 38),
              ),
            ),
          ],
        )
      ],
    );
  }
}
