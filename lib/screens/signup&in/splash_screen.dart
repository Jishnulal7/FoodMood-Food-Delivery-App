import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/screens/signup&in/onboard_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(
          context,
        ).primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 70,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/Logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
