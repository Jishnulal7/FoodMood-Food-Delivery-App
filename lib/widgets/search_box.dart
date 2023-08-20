import 'package:flutter/material.dart';
import 'package:food_mood_app/models/category_model.dart';
import 'package:food_mood_app/widgets/place_suggestion.dart';

import '../models/menu_item_model.dart';
import '../models/restaurant_model.dart';


class SearchBox extends StatefulWidget {
  const SearchBox(
      {super.key, required this.menuItems, required this.restaurants});
  final List<MenuItem> menuItems;
  final List<Restaurant> restaurants;

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(
                    category: Category.categories[0],
                  ),
                ),
              );
            },
            readOnly: true,
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
        // Container(
        //   decoration: const BoxDecoration(color: Colors.white),
        //   height: 50,
        //   width: 50,
        //   child: IconButton(
        //     icon: const Icon(
        //       Icons.menu,
        //     ),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => FilterScreen(
        //             menuItems: widget.menuItems,
        //             restaurants: widget.restaurants,
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // )
      ],
    );
  }
}
