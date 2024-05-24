import 'package:flutter/material.dart';
import 'package:shopping_mall/util/theme/custom_themes/app_bar_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/checkbox_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/chip_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/eleveted_button_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/text_button_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/text_field_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._(); // private

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: IChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: IAppBarTheme.lightAppBarTheme,
    checkboxTheme: ICheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: IBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: IOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
    textButtonTheme: TTextButtonTheme.lightTextButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: IChipTheme.darkChipTheme,
    bottomSheetTheme: IBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: IAppBarTheme.darkAppBarTheme,
    checkboxTheme: ICheckBoxTheme.darkCheckBoxTheme,
    outlinedButtonTheme: IOutlinedButtonTheme.darkOutlinedButtonTheme,
    textButtonTheme: TTextButtonTheme.darkTextButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}
