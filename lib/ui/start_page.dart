import 'package:flutter/material.dart';
import 'package:password_generator/ui/password_generating_page.dart';
import 'package:password_generator/ui/pin_generating_page.dart';
import 'package:password_generator/widgets/change_theme_button.dart';
import 'package:password_generator/widgets/password_type_widget.dart';

class PasswordTypeChoice extends StatelessWidget {
  const PasswordTypeChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: const <Widget>[
                Text(
                  "Secret Data Generator",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  "by kateR",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PasswordTypeWidget(
                  content: "PIN-generator",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PinGeneratingPage(),
                      ),
                    );
                  },
                ),
                PasswordTypeWidget(
                  content: "Password generator",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordGeneratingPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(flex: 3, child: Container())
        ],
      ),
    );
  }
}
