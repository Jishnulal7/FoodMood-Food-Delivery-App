import 'package:flutter/material.dart';
import 'package:food_mood_app/models/category_model.dart';
import 'package:food_mood_app/models/restaurant_model.dart';



import '../screens/home/home_screen.dart';
import '../screens/restaurant/restaurant_listing_screen.dart';

class SearchPage extends StatelessWidget {
  final Category category;

  const SearchPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  onChanged: (value) {
                    // Perform filtering based on the entered value
                    // _runFilter(value);
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    border: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Restaurant name or a dish...',
                    prefixIcon: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              // const Text(
              //   'Recent Searches',
              //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              // ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Popular Searches',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Category.categories.isNotEmpty
                    ? ListView.builder(
                        // itemCount: FoodCategory.foodCategories.length,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          final Category currentCategory =
                              Category.categories[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RestaurantListingScreen(
                                    restaurants: Restaurant.restaurants,
                                  ),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Card(
                                elevation: 2,
                                margin: const EdgeInsets.symmetric(vertical: 2),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: currentCategory.image.image,
                                    backgroundColor: Colors.transparent,
                                  ),
                                  title: Text(
                                    currentCategory.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: const Text('Dish'),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : const Center(
                        child: Text(
                            'No Results found. Please try a different search.'),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
