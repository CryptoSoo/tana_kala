import 'package:flutter/material.dart';
import 'package:tana_kala/theme/colors.dart';

ThemeData appTheme() {
  return ThemeData(
      
      fontFamily: 'Peyda',
      textTheme: const TextTheme(),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white, elevation: 0, toolbarHeight: 70),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
          ),);
}
