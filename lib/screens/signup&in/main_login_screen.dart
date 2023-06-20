import 'package:flutter/material.dart';
import 'package:food_delivery/screens/signup&in/restaurant_login_screen.dart';
import 'package:food_delivery/screens/signup&in/signup_screen.dart';

class MainLoginScreen extends StatelessWidget {
  const MainLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                  330,
                  54,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const RestaurantLoginScreen();
                    },
                  ),
                );
              },
              child: const Text('Restaurant Login'),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                  330,
                  54,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ),
                );
              },
              child: const Text('User Login'),
            ),
          ],
        ),
      ),
    );
  }
}
