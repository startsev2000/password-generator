import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_generator/providers/theme_provider.dart';

final themeProvider =
    ChangeNotifierProvider<ThemeProvider>((ref) => ThemeProvider());

class ChangeThemeButton extends ConsumerWidget {
  const ChangeThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkMode = ref.watch(themeProvider);

    return Switch.adaptive(
      value: isDarkMode.isDarkMode,
      onChanged: (value) {
        isDarkMode.toggleTheme(value);
      },
    );
  }
}
