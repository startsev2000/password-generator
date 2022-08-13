import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    elevatedButtonTheme: _elevatedButtonTheme,
    sliderTheme: _sliderTheme,
    checkboxTheme: _checkboxTheme,
    switchTheme: _switchTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    brightness: Brightness.dark,
    elevatedButtonTheme: _elevatedButtonTheme,
    sliderTheme: _sliderTheme,
    checkboxTheme: _checkboxTheme,
    switchTheme: _switchTheme,
  );

  static final _sliderTheme = SliderThemeData(
    activeTrackColor: Colors.lightGreen,
    activeTickMarkColor: Colors.lightGreen,
    thumbColor: Colors.lightGreen[700],
    valueIndicatorColor: Colors.black,
    inactiveTrackColor: Colors.lightGreen[100],
    inactiveTickMarkColor: Colors.lightGreen[200],
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 1.0,
      primary: Colors.lightGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
  );

  static final _checkboxTheme = CheckboxThemeData(
    checkColor: MaterialStateProperty.all(Colors.black),
    fillColor: MaterialStateProperty.all(Colors.lightGreen),
  );

  static final _switchTheme = SwitchThemeData(
    thumbColor: MaterialStateProperty.all(Colors.lightGreen),
    trackColor: MaterialStateProperty.all(Colors.lightGreen[100]),
  );
}
