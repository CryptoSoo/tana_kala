import 'package:flutter/material.dart';
import 'package:tana_kala/pages/product_details.dart';
import 'package:tana_kala/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'تانا کالا',
        locale: const Locale('fa', 'IR'),
        theme: appTheme(),
        home: const ProductDetails());
  }
}
