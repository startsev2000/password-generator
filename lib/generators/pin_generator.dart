import 'dart:math';

import 'package:password_generator/generators/generator.dart';

class PinGenerator extends Generator {
  PinGenerator({required super.length}) {
    if (length < 4) {
      throw Exception("PIN must be more than 4 symbols long!");
    }
    if (length > 12) {
      throw Exception(
          "PIN cannot be longer than 12 symbols. Use password generator instead");
    }
  }

  @override
  String generate() {
    Random random = Random();
    String pin = "";
    for (int i = 0; i < length; i++) {
      pin += random.nextInt(10).toString();
    }
    return pin;
  }
}
