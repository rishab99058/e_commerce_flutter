import 'package:flutter/material.dart';

class TAppBar{
  TAppBar._();

  static const darkMode = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 18.0),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 18.0)

  );

  static const dightMode = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 18.0),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 18.0)
  );
}