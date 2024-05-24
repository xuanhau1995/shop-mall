import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';

class TTextButtonTheme {
  TTextButtonTheme._(); // Private constructor

  static final lightTextButtonTheme = TextButtonThemeData(
      style: ButtonStyle(
          padding: WidgetStateProperty.all(EdgeInsets.all(18)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          textStyle: WidgetStateProperty.all(
              TextStyle(fontSize: 14, color: IColors.black))));

  static final darkTextButtonTheme = TextButtonThemeData(
      style: ButtonStyle(
          padding: WidgetStateProperty.all(EdgeInsets.all(18)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          textStyle: WidgetStateProperty.all(
              TextStyle(fontSize: 14, color: IColors.white))));
}
