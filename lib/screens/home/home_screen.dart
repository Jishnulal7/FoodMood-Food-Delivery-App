import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_mood_app/screens/location/location_screen.dart';
import 'package:food_mood_app/screens/profile/account_screen.dart';
import 'package:food_mood_app/widgets/promo_box.dart';


import '../../models/category_model.dart';
import '../../models/menu_item_model.dart';
import '../../models/promo_model.dart';
import '../../models/restaurant_model.dart';
import '../../widgets/food_category_box.dart';
import '../../widgets/restaurant_card.dart';
import '../../widgets/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<MenuItem> menuItems = [];
  final List<Restaurant> restaurants = []; // Add your actual restaurants list
  bool showAddress = true;
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LocationScreen();
                        },
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.location_on,
                  ),
                ),
                Text(
                  'Home',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                InkWell(
                  //to hide address on Appbar
                  onTap: () {
                    setState(
                      () {
                        showAddress = !showAddress;
                      },
                    );
                  },
                  child: const Icon(
                    Icons.arrow_drop_down,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                if (showAddress)
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBox(
                  menuItems: MenuItem.menuItems,
                  restaurants: Restaurant.restaurants,
                ),
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
                    itemCount: Category.categories.length,
                    itemBuilder: ((context, index) {
                      return FoodCategoryBox(
                        category: Category.categories[index],
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
                itemCount: Restaurant.restaurants.length,
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
