import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant_model.dart';
import 'package:food_delivery/screens/order/cart_screen.dart';
import 'package:food_delivery/screens/restaurant_info.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    // Restaurant restaurant = Restaurant.restaurants[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CartScreen();
                      },
                    ),
                  );
                },
                child: const Text('Cart'),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom:
                      Radius.elliptical(MediaQuery.of(context).size.width, 70),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    restaurant.imageAsset,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            RestaurantInfo(restaurant: restaurant),
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: restaurant.tags.length,
              itemBuilder: (context, index) {
                return _buildMenuItems(restaurant, context, index);
              },
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildMenuItems(Restaurant restaurant, BuildContext context, int index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          restaurant.tags[index],
          style:
              Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 20),
        ),
      ),
      Column(
        children: restaurant.menuItems
            .where((menuitem) => menuitem.category == restaurant.tags[index])
            .map(
              (menuitems) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        title: Text(
                          menuitems.name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(menuitems.description),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('₹${menuitems.price}'),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle,
                                color: Theme.of(context).primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    height: 2,
                  )
                ],
              ),
            )
            .toList(),
      )
    ],
  );
}
