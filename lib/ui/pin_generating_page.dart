import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_generator/generators/pin_generator.dart';

class PinGeneratingPage extends StatefulWidget {
  const PinGeneratingPage({Key? key}) : super(key: key);

  @override
  State<PinGeneratingPage> createState() => _PinGeneratingPageState();
}

class _PinGeneratingPageState extends State<PinGeneratingPage> {
  double _pinLength = 4;
  String pinCode = "        ";

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
                pinCode,
                style: const TextStyle(
                  fontSize: 36.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
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
          SizedBox(
            height: 30.h,
          ),
          ElevatedButton(
            onPressed: () {
              PinGenerator pinGenerator =
                  PinGenerator(length: _pinLength.round());
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
