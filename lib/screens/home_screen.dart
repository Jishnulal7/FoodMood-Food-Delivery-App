import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bell,
              color: Color(
                0xFFBDBDBD,
              ),
            ),
          ),
          centerTitle: true,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                  ),
                  Text(
                    'Home',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '9, suramya duplex, nr. nigam bus stand.....',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const SearchBox(),
              const SizedBox(
                height: 35,
              ),
              Image.asset(
                'assets/images/60%off.png',
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'What’s your mood today?',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
