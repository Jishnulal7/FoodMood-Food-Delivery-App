import 'package:flutter/material.dart';

import '../../models/restaurant_model.dart';
import '../../widgets/restaurant_card.dart';


class RestaurantListingScreen extends StatelessWidget {



  final List<Restaurant> restaurants;

  const RestaurantListingScreen({super.key, 
    required this.restaurants,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurants')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            return RestaurantCard(restaurants: restaurants[index]);
          },
        ),
      ),
    );
  }
}
