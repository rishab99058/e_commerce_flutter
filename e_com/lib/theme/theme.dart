import 'package:e_com/theme/custom/appBarTheme.dart';
import 'package:e_com/theme/custom/checkBox.dart';
import 'package:e_com/theme/custom/elevatedButtonTheme.dart';
import 'package:e_com/theme/custom/outlineButtonTheme.dart';
import 'package:e_com/theme/custom/textButton.dart';
import 'package:e_com/theme/custom/textFieldTheme.dart';
import 'package:e_com/theme/custom/textTheme.dart';
import 'package:flutter/material.dart';

class TTheme{
   TTheme._();
   
   static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    textButtonTheme: TTextButtonTheme.lightTextButtonTheme
    
   );

   static ThemeData darkTheme = ThemeData(  
    scaffoldBackgroundColor: Colors.black,
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    textButtonTheme: TTextButtonTheme.darkTextButtonTheme

   );

}