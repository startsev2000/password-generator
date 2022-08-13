import 'dart:math';

import 'package:password_generator/generators/generator.dart';
import 'package:password_generator/const/symbols.dart';

class PasswordGenerator extends Generator {
  final List<Symbols> symbolTypes;
  final Random random = Random();

  // what symbols can be added to password:
  // - small letters
  // - capital letters
  // - numbers
  // - extra symbols
  PasswordGenerator({required super.length, required this.symbolTypes}) {
    if (length < 6) {
      throw Exception(
          "Password should be more than 6 symbols long. Safety is your main priority!");
    }
    if (length > 32) {
      throw Exception(
          "Password length is HUUUUGE. Better generate a shorter password!");
    }
  }

  @override
  String generate() {
    List<String> symbols = [];

    List<int> symbolsCount = _generateSymbolsCount();

    int type = 0;
    for (var symbolType in symbolTypes) {
      symbols.addAll(_generateSymbols(symbolType, symbolsCount[type]));
      type++;
    }

    symbols.shuffle();

    String password = "";
    for (int i = 0; i < length; i++) {
      password += symbols[i];
    }

    return password;
  }

  int _generateNumber(int begin, int end) {
    if (begin > end) {
      throw Exception("Begin number is bigger than the end number");
    }
    return begin + random.nextInt(end - begin + 1);
  }

  List<int> _generateSymbolsCount() {
    List<int> symbolsCount = [];
    int passwordLength = length;
    int currentSum = 0;

    for (int i = 0; i < symbolTypes.length - 1; i++) {
      int symbolCount = _generateNumber(
          1, passwordLength - (symbolTypes.length - i - 1) - currentSum);
      currentSum += symbolCount;
      symbolsCount.add(symbolCount);
    }
    symbolsCount.add(passwordLength - currentSum);
    return symbolsCount;
  }

  List<String> _generateSymbols(Symbols type, int count) {
    // 33-126
    // special symbols: 33-47 (58-64, 91-96, 123-126 to be realized)
    // letters: 65-90 (upper case), 97-122 (lower case)
    // numbers: 48-57
    int begin, end;
    switch (type) {
      case Symbols.digits:
        begin = 48;
        end = 57;
        break;
      case Symbols.lowerCaseLetters:
        begin = 97;
        end = 122;
        break;
      case Symbols.upperCaseLetters:
        begin = 65;
        end = 90;
        break;
      case Symbols.specialSymbols:
        begin = 33;
        end = 47;
        break;
    }

    List<String> symbols = [];

    for (int i = 0; i < count; i++) {
      symbols.add(String.fromCharCode(_generateNumber(begin, end)));
    }

    return symbols;
  }
}
