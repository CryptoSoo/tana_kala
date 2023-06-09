import 'package:flutter/material.dart';
import 'package:tana_kala/theme/colors.dart';

ThemeData appTheme() {
  return ThemeData(
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    fontFamily: 'Peyda',
    textTheme: const TextTheme(
        // headlineLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)
        // titleMedium: TextStyle(fontSize: 16,fontWeight: FontWeight.w700)
        ),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white, elevation: 0, toolbarHeight: 70),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
    ),
  );
}
