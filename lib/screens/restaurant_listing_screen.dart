import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant_model.dart';
import 'package:food_delivery/widgets/restuarant_card.dart';

class RestaurantListingScreen extends StatelessWidget {
  const RestaurantListingScreen({
    super.key,
    required this.restaurants,
  });

  final List<Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemCount: restaurants.length,
        itemBuilder: (context, index) {
        return RestaurantCard(restaurants: restaurants[index]);
      }),
    );
  }
}
