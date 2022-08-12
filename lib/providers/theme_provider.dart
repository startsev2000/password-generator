import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  var brightness = SchedulerBinding.instance.window.platformBrightness;

  bool get isDarkMode => brightness == Brightness.dark;

  void toggleTheme(bool switchValue) {
    if (brightness == Brightness.dark) {
      // in this case switch value is true
      themeMode = ThemeMode.light;
      brightness = Brightness.light;
    } else {
      themeMode = ThemeMode.dark;
      brightness = Brightness.dark;
    }

    notifyListeners();
  }
}
