import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tana_kala/pages/home_page.dart';
import 'package:tana_kala/pages/product_details.dart';
import 'package:tana_kala/pages/store_page.dart';
import 'package:tana_kala/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       localizationsDelegates: [
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: [
    Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
  ],
        debugShowCheckedModeBanner: false,
        title: 'تانا کالا',
        locale: const Locale('fa', 'IR'),
        theme: appTheme(),
        home: const ProductDetails());
  }
}
