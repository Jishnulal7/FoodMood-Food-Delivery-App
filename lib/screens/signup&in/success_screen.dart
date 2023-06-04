import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 44,
                left: 24,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/images/success.png',
            ),
            const SizedBox(
              height: 90,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Your password has been reset successfully.',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Don’t forget the password again :)',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                  342,
                  58,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }));
              },
              child: const Text(
                'Get Moody Again',
              ),
            )
          ]),
        ),
      ),
    );
  }
}
