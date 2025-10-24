import 'package:flutter/widgets.dart';

abstract class AppStyles {
  static TextStyle get fontsize25 => const TextStyle(
    fontSize: 25,
    color: Color(0xffF1F1F1),
    fontWeight: FontWeight.w200,
  );

  static TextStyle get fontsize50 => const TextStyle(
    fontWeight: FontWeight.w200,
    color: Color(0xffF1F1F1),
    fontSize: 50,
  );

  static TextStyle get fontsize20 => TextStyle(
    fontWeight: FontWeight.w200,
    color: Color(0xffF1F1F1),
    fontSize: 20,
  );

  static TextStyle get fontsize26 => TextStyle(
    fontWeight: FontWeight.w200,
    color: Color(0xff828393),
    fontSize: 25,
  );

  static TextStyle get fontsize17 => TextStyle(
    fontSize: 17,
    color: Color(0xffF1F1F1),
    fontWeight: FontWeight.bold,
  );
}
