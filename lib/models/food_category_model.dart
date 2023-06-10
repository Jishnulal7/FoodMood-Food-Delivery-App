import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class FoodCategory extends Equatable {
  final int id;
  final String name;
  final Image image;

  const FoodCategory({
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        image,
      ];

  static List<FoodCategory> foodCategories = [
    FoodCategory(
      id: 1,
      name: 'Snacks',
      image: Image.asset(
        'assets/images/snack.png',
      ),
    ),
    FoodCategory(
      id: 2,
      name: 'Pizza',
      image: Image.asset(
        'assets/images/pizza.png',
      ),
    ),
    FoodCategory(
      id: 3,
      name: 'Biriyani',
      image: Image.asset(
        'assets/images/biriyani.png',
      ),
    ),
    FoodCategory(
      id: 4,
      name: 'Burgers',
      image: Image.asset(
        'assets/images/burger.png',
      ),
    ),
    FoodCategory(
      id: 5,
      name: 'Chinese',
      image: Image.asset(
        'assets/images/chinese.png',
      ),
    ),
    FoodCategory(
      id: 6,
      name: 'Desserts',
      image: Image.asset(
        'assets/images/deserts.png',
      ),
    ),
    FoodCategory(
      id: 7,
      name: 'Sweets',
      image: Image.asset(
        'assets/images/sweets.png',
      ),
    ),
    FoodCategory(
      id: 8,
      name: 'North Indian',
      image: Image.asset(
        'assets/images/north-indian.png',
      ),
    ),
    FoodCategory(
      id: 9,
      name: 'South Indian',
      image: Image.asset(
        'assets/images/south-indian.png',
      ),
    ),
  ];
}
