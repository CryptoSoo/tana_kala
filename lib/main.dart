import 'package:flutter/material.dart';
import 'package:tana_kala/pages/home_page.dart';

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
        theme: ThemeData(primaryColor: Color(0xE7A283)),
        home: HomePage());
  }
}
