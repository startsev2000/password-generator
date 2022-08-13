import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_generator/const/symbols.dart';
import 'package:password_generator/generators/password_generator.dart';

class PasswordGeneratingPage extends StatefulWidget {
  const PasswordGeneratingPage({Key? key}) : super(key: key);

  @override
  State<PasswordGeneratingPage> createState() => _PasswordGeneratingPageState();
}

class _PasswordGeneratingPageState extends State<PasswordGeneratingPage> {
  double _passwordLength = 8;
  String password = "                ";

  Map<String, Symbols?> passwordSymbols = {
    "lowerCaseLetters": null,
    "upperCaseLetters": null,
    "digits": null,
    "specialSymbols": null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 10.w,
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreen),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 30.h,
                horizontal: 30.w,
              ),
              child: Text(
                password,
                style: TextStyle(
                  fontSize: password.length > 20 ? 28.0 : 36.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Password length"),
              Slider(
                value: _passwordLength,
                min: 6,
                max: 32,
                divisions: 26,
                label: _passwordLength.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _passwordLength = value;
                  });
                },
              ),
            ],
          ),
          CheckboxListTile(
            title: const Text("Lower case letters"),
            value: passwordSymbols["lowerCaseLetters"] != null,
            onChanged: (bool? value) {
              setState(() {
                passwordSymbols["lowerCaseLetters"] =
                    passwordSymbols["lowerCaseLetters"] != null
                        ? null
                        : Symbols.lowerCaseLetters;
              });
            },
            secondary: const Icon(Icons.abc),
          ),
          CheckboxListTile(
            title: const Text("Upper case letters"),
            value: passwordSymbols["upperCaseLetters"] != null,
            onChanged: (bool? value) {
              setState(() {
                passwordSymbols["upperCaseLetters"] =
                    passwordSymbols["upperCaseLetters"] != null
                        ? null
                        : Symbols.upperCaseLetters;
              });
            },
            secondary: const Icon(Icons.abc),
          ),
          CheckboxListTile(
            title: const Text("Digits"),
            value: passwordSymbols["digits"] != null,
            onChanged: (bool? value) {
              setState(() {
                passwordSymbols["digits"] =
                    passwordSymbols["digits"] != null ? null : Symbols.digits;
              });
            },
            secondary: const Icon(Icons.numbers),
          ),
          CheckboxListTile(
            title: const Text("Special symbols"),
            value: passwordSymbols["specialSymbols"] != null,
            onChanged: (bool? value) {
              setState(() {
                passwordSymbols["specialSymbols"] =
                    passwordSymbols["specialSymbols"] != null
                        ? null
                        : Symbols.specialSymbols;
              });
            },
            secondary: const Icon(Icons.numbers),
          ),
          ElevatedButton(
            onPressed: () {
              List<Symbols> symbolTypes = [];
              for (var value in passwordSymbols.values) {
                if (value != null) {
                  symbolTypes.add(value);
                }
              }
              if (symbolTypes.isNotEmpty) {
                PasswordGenerator passwordGenerator = PasswordGenerator(
                    length: _passwordLength.round(), symbolTypes: symbolTypes);
                String generatedPin = passwordGenerator.generate();
                setState(() {
                  password = generatedPin;
                });
              }
            },
            child: const Text("Generate!"),
          ),
        ],
      ),
    );
  }
}
