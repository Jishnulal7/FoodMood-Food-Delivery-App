import 'package:flutter/material.dart';

class OrderPlacedScreen extends StatelessWidget {
  const OrderPlacedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Success Illustration.png'),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Your order has been placed!',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 20),
            ),
            Text(
              'You will receive an email shortly.',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
