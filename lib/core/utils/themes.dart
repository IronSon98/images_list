import 'package:flutter/material.dart';
import 'package:images_list/core/utils/colors.dart';

class Themes {
  ThemeData get darkTheme => ThemeData(
        appBarTheme: const AppBarTheme(
          color: darkPrimaryColor,
          elevation: 0,
        ),
        primarySwatch: darkPrimaryColor,
        primaryColor: darkPrimaryColor,
        scaffoldBackgroundColor: darkPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  ThemeData get lightTheme => ThemeData(
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          elevation: 0,
        ),
        primarySwatch: primaryColor,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: secondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
