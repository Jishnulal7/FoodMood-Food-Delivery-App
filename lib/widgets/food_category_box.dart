import 'package:flutter/material.dart';
import 'package:food_mood_app/models/restaurant_model.dart';
import 'package:food_mood_app/screens/restaurant/restaurant_listing_screen.dart';

import '../models/category_model.dart';




class FoodCategoryBox extends StatelessWidget {
  final Category category;
  const FoodCategoryBox({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final List<Restaurant> restaurants = Restaurant.restaurants
        .where((restaurant) => restaurant.tags.contains(category.name))
        .toList();

    return Container(
      width: 100,
      margin: const EdgeInsets.only(
        right: 20,
      ),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RestaurantListingScreen(
                      restaurants: restaurants,
                    );
                  },
                ),
              );
            },
            child: SizedBox(
              height: 144,
              width: 136,
              child: category.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
