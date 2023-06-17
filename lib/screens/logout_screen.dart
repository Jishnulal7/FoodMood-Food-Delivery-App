import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/log-out.png'),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Oh no! You are leaving...',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 20),
            ),
            Text(
              'Are you sure',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: 380,
                height: 48,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xffD9D9D9)),
                    top: BorderSide(color: Color(0xffD9D9D9)),
                    right: BorderSide(color: Color(0xffD9D9D9)),
                    left: BorderSide(color: Color(0xffD9D9D9)),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Yes, Log me out',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: 380,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Center(
                  child: Text(
                    'Nah! Just kidding',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
