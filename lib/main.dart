import 'package:flutter/material.dart';
import 'package:food_delivery/screens/logout_screen.dart';
import 'package:food_delivery/screens/signup&in/splash_screen.dart';
import 'package:food_delivery/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // routes: {

      // },
      home: const SplashScreen(),
      // home: const LogoutScreen(),
    );
  }
}
