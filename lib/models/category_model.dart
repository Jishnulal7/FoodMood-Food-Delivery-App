import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class FoodCategory extends Equatable {
  final int id;
  final String name;
  final Image image;
  final String desc;

  const FoodCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.desc,
  });

  @override
  List<Object?> get props => [id, name, image, desc];

  static List<FoodCategory> foodCategories = [
    FoodCategory(
      id: 1,
      name: 'Arabian',
      image: Image.asset(
        'assets/images/snack.png',
      ),
      desc: 'Dish',
    ),
    FoodCategory(
      id: 2,
      name: 'Pizza',
      image: Image.asset(
        'assets/images/pizza.png',
      ),
      desc: 'Dish',
    ),
    FoodCategory(
      id: 3,
      name: 'Biriyani',
      image: Image.asset(
        'assets/images/biriyani.png',
      ),
      desc: 'Dish',
    ),
    FoodCategory(
      id: 4,
      name: 'Burgers',
      image: Image.asset(
        'assets/images/burger.png',
      ),
      desc: 'Dish',
    ),
    FoodCategory(
      id: 5,
      name: 'Chinese',
      image: Image.asset(
        'assets/images/chinese.png',
      ),
      desc: 'Dish',
    ),
    FoodCategory(
      id: 6,
      name: 'Deserts',
      image: Image.asset(
        'assets/images/deserts.png',
      ),
      desc: 'Dish',
    ),
    FoodCategory(
      id: 7,
      name: 'Drinks',
      image: Image.asset(
        'assets/images/sweets.png',
      ),
      desc: 'Dish',
    ),
    FoodCategory(
      id: 8,
      name: 'Rolls',
      image: Image.asset(
        'assets/images/north-indian.png',
      ),
      desc: 'Dish',
    ),
    FoodCategory(
        id: 9,
        name: 'Veg',
        image: Image.asset(
          'assets/images/south-indian.png',
        ),
        desc: 'Dish'),
  ];
}
