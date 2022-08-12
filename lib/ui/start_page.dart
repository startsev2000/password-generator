import 'package:flutter/material.dart';
import 'package:password_generator/ui/pin_generating_page.dart';
import 'package:password_generator/widgets/change_theme_button.dart';
import 'package:password_generator/widgets/password_type_widget.dart';

class PasswordTypeChoice extends StatelessWidget {
  const PasswordTypeChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password generator"),
        centerTitle: true,
        actions: const <Widget>[
          ChangeThemeButton(),
        ],
      ),
      body: Center(
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
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
