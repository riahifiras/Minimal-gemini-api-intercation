import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class ToDoAppTheme {
  ToDoAppTheme._();

  ///Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ToDoTextTheme.lightTextTheme,
    chipTheme: ToDoChipTheme.lightChipTheme,
    appBarTheme: ToDoAppBarTheme.lightAppBarTheme,
    checkboxTheme: ToDoCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: ToDoBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ToDoElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ToDoOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ToDoTextFieldTheme.lightInputDecorationTheme,
  );

  ///Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ToDoTextTheme.darkTextTheme,
    chipTheme: ToDoChipTheme.darkChipTheme,
    appBarTheme: ToDoAppBarTheme.darkAppBarTheme,
    checkboxTheme: ToDoCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: ToDoBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ToDoElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ToDoOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ToDoTextFieldTheme.darkInputDecorationTheme,
  );
}
