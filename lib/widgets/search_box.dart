import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  // final List<Map<String, dynamic>> _allFoodItems = [
  //   {
  //     'id': 1,
  //     'image': 'assets/images/1.png',
  //     'name': 'Chicken',
  //     'des': 'Dish',
  //   },
  //   {
  //     'id': 2,
  //     'image': 'assets/images/2.jpg',
  //     'name': 'Paratha',
  //     'des': 'Dish',
  //   },
  //   {
  //     'id': 3,
  //     'image': 'assets/images/3.jpeg',
  //     'name': 'Biriyani',
  //     'des': 'Dish',
  //   },
  //   {
  //     'id': 4,
  //     'image': 'assets/images/4.jpg',
  //     'name': 'Pizza',
  //     'des': 'Dish',
  //   },
  //   {
  //     'id': 5,
  //     'image': 'assets/images/5.jpg',
  //     'name': 'Burger',
  //     'des': 'Dish',
  //   },
  //   {
  //     'id': 6,
  //     'image': 'assets/images/6.jpg',
  //     'name': 'Mandhi',
  //     'des': 'Dish',
  //   }
  // ];

  // List<Map<String, dynamic>> _foodItems = [];
  // @override
  // void initState() {
  //   _foodItems = _allFoodItems;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Name Your Mood...',
              suffixIcon: Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
              contentPadding: const EdgeInsets.only(
                left: 10,
                bottom: 5,
                top: 14,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          height: 50,
          width: 50,
          child: IconButton(
            icon: const Icon(
              Icons.menu,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
