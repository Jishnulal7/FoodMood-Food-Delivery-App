import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/category_model.dart';
import 'package:food_delivery/widgets/food_category_box.dart';
import 'package:food_delivery/widgets/promo_box.dart';
import '../models/promo_model.dart';
import '../widgets/search_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchBox(),
              const SizedBox(
                height: 20,
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
                padding: const EdgeInsets.only(right: 20),
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
              SizedBox(
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
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top Rated',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
