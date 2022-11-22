import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_home_concept/theme/theme.dart';
import 'package:smart_home_concept/view/login_screen.dart';

void main() => runApp(const MainState());

class MainState extends StatelessWidget {
  const MainState({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData,
      home: const LoginScreen(),
    );
  }
}
