import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Color(0xFFF0F0F2),
      ),
      primaryColor: const Color(0xFF3D5CFF), // primary color
      fontFamily: 'Roboto', // Font default
      scaffoldBackgroundColor: Colors.white, // background scaffold
      hintColor: const Color(0xFFF4F3FD),
      shadowColor: const Color.fromARGB(255, 229, 229, 229),
      dividerColor: Colors.red,
      cardColor: Colors.grey,
      primaryColorDark: Colors.black,
      canvasColor: const Color(0xFF1F1F39),

      indicatorColor: Colors.orange,
      hoverColor: const Color.fromARGB(255, 255, 175, 175),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData();
  }
}
