import 'package:flutter/material.dart';
import 'package:images_list/core/utils/themes.dart';
import 'package:images_list/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: Themes().darkTheme,
      theme: Themes().lightTheme,
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
