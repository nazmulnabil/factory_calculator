import 'package:get/get.dart';
import 'package:oop_calculator/modules/basic_calculator/bindings/basic_calculator_binding.dart';
import 'package:oop_calculator/modules/basic_calculator/views/basic_calculator.dart';
import 'package:oop_calculator/modules/main/first_page.dart';
import 'package:oop_calculator/modules/scientific_calculator/bindings/scientific_calculator_bindings.dart';
import 'package:oop_calculator/modules/scientific_calculator/views/Scientific_calculator.dart';


part  'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () =>const FirstPage(),
     // binding: MainBinding(),
    ),

    GetPage(
      name: _Paths.BasicCalculator,
      page: () =>const BasicCalculatorView(),
      binding:BasicCalculatorBinding(),
    ),

    GetPage(
      name: _Paths.ScientificCalculator,
      page: () =>const ScientificCalcualtorView(),
        binding:ScientificCalculatorBinding(),
    ),

  ];
}