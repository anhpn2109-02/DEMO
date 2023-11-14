
import 'package:elearning/src/presentation/views/login/signup_screen.dart';
import 'package:elearning/src/presentation/views/navigation_bar/navigation_bar_screen.dart';
import 'package:elearning/src/presentation/views/splash_screen/splash_screen_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
