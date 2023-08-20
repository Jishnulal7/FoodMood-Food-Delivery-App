import 'dart:async';

import 'package:flutter/material.dart';

import 'onboard_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
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
    return Scaffold(
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
    );
  }
}
