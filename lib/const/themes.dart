import 'package:flutter/material.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    elevatedButtonTheme: _elevatedButtonLightTheme,
    sliderTheme: _sliderTheme,
    checkboxTheme: _checkboxTheme,
    switchTheme: _switchTheme,
    textTheme: const TextTheme().apply(bodyColor: Colors.black),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    brightness: Brightness.dark,
    elevatedButtonTheme: _elevatedButtonDarkTheme,
    sliderTheme: _sliderTheme,
    checkboxTheme: _checkboxTheme,
    switchTheme: _switchTheme,
    textTheme: const TextTheme().apply(bodyColor: Colors.white),
  );

  static final _sliderTheme = SliderThemeData(
    activeTrackColor: Colors.lightGreen,
    activeTickMarkColor: Colors.lightGreen,
    thumbColor: Colors.lightGreen[700],
    valueIndicatorColor: Colors.black,
    inactiveTrackColor: Colors.lightGreen[100],
    inactiveTickMarkColor: Colors.lightGreen[200],
  );

  static final _elevatedButtonLightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 1.0,
      primary: Colors.lightGreen,
      onPrimary: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
  );

  static final _elevatedButtonDarkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 1.0,
      primary: Colors.lightGreen,
      onPrimary: Colors.white,
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
