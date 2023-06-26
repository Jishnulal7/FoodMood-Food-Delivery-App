import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/category_model.dart';

import 'package:food_delivery/models/restaurant_model.dart';
import 'package:food_delivery/screens/profile/account_screen.dart';

import 'package:food_delivery/widgets/food_category_box.dart';
import 'package:food_delivery/widgets/promo_box.dart';
import 'package:food_delivery/widgets/restaurant_card.dart';
import '../models/promo_model.dart';
import '../widgets/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
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
                  'Mankada,Malappuram',
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AccountScreen();
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.account_circle,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SearchBox(),
              ),
              SizedBox(
                height: 205,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return PromoBox(
                      promos: Promo.promos[index],
                    );
                  },
                  itemCount: Promo.promos.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'What’s your mood today?',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: FoodCategory.foodCategories.length,
                    itemBuilder: ((context, index) {
                      return FoodCategoryBox(
                        category: FoodCategory.foodCategories[index],
                      );
                    }),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Top Rated',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RestaurantCard(
                    restaurants: Restaurant.restaurants[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
