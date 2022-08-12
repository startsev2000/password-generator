import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,


    primaryColor: Colors.white,
    primaryColorDark: Colors.grey,
    primaryColorLight: Colors.lightGreen,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,

    primaryColor: Colors.black,
    primaryColorDark: Colors.grey,
    primaryColorLight: Colors.green,
  );
}



