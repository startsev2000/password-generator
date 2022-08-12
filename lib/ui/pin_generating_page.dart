import 'package:flutter/material.dart';
import 'package:password_generator/generators/pin_generator.dart';

class PinGeneratingPage extends StatefulWidget {
  const PinGeneratingPage({Key? key}) : super(key: key);

  @override
  State<PinGeneratingPage> createState() => _PinGeneratingPageState();
}

class _PinGeneratingPageState extends State<PinGeneratingPage> {
  double _pinLength = 4;
  String pinCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(pinCode),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("PIN code length"),
              Slider(
                value: _pinLength,
                min: 4,
                max: 12,
                divisions: 8,
                label: _pinLength.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _pinLength = value;
                  });
                },
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              PinGenerator pinGenerator = PinGenerator(length: _pinLength.round());
              String generatedPin = pinGenerator.generate();
              setState(() {
                pinCode = generatedPin;
              });
            },
            child: const Text("Generate!"),
          ),
        ],
      ),
    );
  }
}
