part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const MAIN = _Paths.MAIN;
  static const BasicCalculator = _Paths.BasicCalculator;
  static const ScientificCalculator = _Paths.ScientificCalculator;
}

abstract class _Paths {
  static const MAIN = '/main';
  static const BasicCalculator = '/basicCalculator';
  static const ScientificCalculator = '/scientificCalculator';
}
