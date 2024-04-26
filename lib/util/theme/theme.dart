import 'package:flutter/material.dart';
import 'package:shopping_mall/util/theme/custom_themes/app_bar_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/checkbox_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/chip_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/eleveted_button_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:shopping_mall/util/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._(); // private

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: IAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: IBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: ICheckBoxTheme.lightCheckBoxTheme,
    chipTheme: IChipTheme.lightChipTheme,
    outlinedButtonTheme: IOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: IAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: IBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ICheckBoxTheme.darkCheckBoxTheme,
    chipTheme: IChipTheme.darkChipTheme,
    outlinedButtonTheme: IOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
