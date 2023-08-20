import 'package:flutter/material.dart';

import '../../models/restaurant_model.dart';


class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(restaurant.name,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 22)),
          const SizedBox(
            height: 10,
          ),
          Text('${restaurant.tags}'),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${restaurant.distance}km - ₹ ${restaurant.deliveryFee} delivery fee',
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Restaurant info",
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Restaurant info",
            style: Theme.of(context).textTheme.bodyMedium!,
          )
        ],
      ),
    );
  }
}
