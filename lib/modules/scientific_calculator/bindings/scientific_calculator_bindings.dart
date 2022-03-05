import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:oop_calculator/modules/scientific_calculator/controllers/scientific_calculator_controller.dart';


class ScientificCalculatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScientificCalculatorController>(
            () => ScientificCalculatorController(),
        fenix: true
    );
  }
}