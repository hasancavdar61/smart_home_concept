import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFF18171C),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color.fromARGB(255, 93, 93, 100),
      contentPadding: EdgeInsets.all(8.0),
      hintStyle: TextStyle(
        color: Colors.white70,
      ),
      enabledBorder: OutlineInputBorder(
        gapPadding: 1,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        borderSide:
            BorderSide(width: 1, color: Color.fromARGB(255, 93, 93, 100)),
      ),
      focusedBorder: OutlineInputBorder(
        gapPadding: 1,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        borderSide:
            BorderSide(width: 1, color: Color.fromARGB(255, 93, 93, 100)),
      ),
    ),
  );
}
