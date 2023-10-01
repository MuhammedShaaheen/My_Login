import 'package:flutter/material.dart';
import 'package:test_1/login_page.dart';
import 'package:test_1/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown)),
      home: SplashScreen(),
    );
  }
}
