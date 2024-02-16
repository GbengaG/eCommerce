import 'package:e_commerce_app/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  // make constructor private and inaccessible outside the class
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedThemeButton,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedThemeButton,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: TChipTheme.darkChipTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );
}