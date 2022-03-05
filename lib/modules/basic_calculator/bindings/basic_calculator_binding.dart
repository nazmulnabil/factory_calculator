import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:oop_calculator/modules/basic_calculator/controllers/basic_calculator_controller.dart';


class BasicCalculatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasicCalculatorController>(
          () => BasicCalculatorController(),
      fenix: true
    );
  }
}