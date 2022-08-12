import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_generator/const/themes.dart';
import 'package:password_generator/ui/start_page.dart';
import 'package:password_generator/widgets/change_theme_button.dart';

void main() {
  runApp(
    const ProviderScope(
      child: PasswordGenerator(),
    ),
  );
}

class PasswordGenerator extends ConsumerWidget {
  const PasswordGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(builder: (context, widget) {
      final theme = ref.watch(themeProvider);

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: theme.themeMode,
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        home: const PasswordTypeChoice(),
      );
    });
  }
}
