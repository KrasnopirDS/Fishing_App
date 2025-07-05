import 'package:fishing_app/screens/start_screen.dart';
import 'package:fishing_app/styles/widget_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: StartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

