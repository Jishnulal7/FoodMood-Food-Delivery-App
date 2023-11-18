import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_mood_app/screens/restaurant/restaurant_info.dart';
import '../../bloc/cart/cart_bloc.dart';
import '../../models/restaurant_model.dart';
import '../order/cart_screen.dart';


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
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                    250,
                    50,
                  ),
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
      backgroundColor: Colors.white,
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
                          BlocBuilder<CartBloc, CartState>(
                            builder: (context, state) {
                              return IconButton(
                                onPressed: () {
                                  context
                                      .read<CartBloc>()
                                      .add(AddItem(menuitems));
                                },
                                icon: Icon(
                                  Icons.add_circle,
                                  color: Theme.of(context).primaryColor,
                                ),
                              );
                            },
                          )

                        ],
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
