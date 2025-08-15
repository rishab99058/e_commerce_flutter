

import 'package:e_com/utils/theme/customTheme/app_bar_theme.dart';
import 'package:e_com/utils/theme/customTheme/elevated_button_theme.dart';
import 'package:e_com/utils/theme/customTheme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme =  ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme:  TTextTheme.lightTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightTheme,
    appBarTheme: TAppBar.dightMode,
    
  );

  static ThemeData darkTheme = ThemeData(
   useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme:  TTextTheme.darkTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkTheme,
    appBarTheme: TAppBar.darkMode,
  );
  
}