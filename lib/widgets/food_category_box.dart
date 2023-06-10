
import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_category_model.dart';

class FoodCategoryBox extends StatelessWidget {
  final FoodCategory category;
  const FoodCategoryBox({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(
        right: 20,
      ),
      child: Stack(
        children: [
          Container(
            height: 144,
            width: 136,
            child: category.image,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
