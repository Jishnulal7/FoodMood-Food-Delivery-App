import 'package:flutter/material.dart';


import '../models/restaurant_model.dart';
import '../screens/restaurant/restaurant_details.dart';


class RestaurantCard extends StatelessWidget {
  final Restaurant restaurants;
  const RestaurantCard({
    super.key,
    required this.restaurants,
  });

  @override
  Widget build(BuildContext context) {

    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return  RestaurantDetailsScreen(restaurant: restaurants,);
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(restaurants.imageAsset),
                          fit: BoxFit.cover,

                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 60,
                        height: 30,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${restaurants.deliveryTime} min',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurants.name,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('${restaurants.tags}'),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${restaurants.distance}km - ₹ ${restaurants.deliveryFee} delivery fee',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
