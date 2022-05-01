import 'package:flutter/material.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:images_list/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          elevation: 0,
        ),
        primarySwatch: primaryColor,
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
