import 'package:bdcoe_app/screens/home_screen/home_screen.dart';
import 'package:bdcoe_app/theme/theme_constants.dart';
import 'package:bdcoe_app/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BDCoE App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const HomeScreen(),
    );
  }
}
