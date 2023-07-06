import 'package:flutter/material.dart';
import 'package:login_page_tutorial/constants/app_colors.dart';
import 'package:login_page_tutorial/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist', scaffoldBackgroundColor: AppColors.bgc),
      home: const LoginPage(),
    );
  }
}
