import 'package:flutter/material.dart';
import 'package:swift_goal/core/app_theme.dart';
import 'package:swift_goal/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.darkTheme,
      home: MainScreen(),
    );
  }
}
