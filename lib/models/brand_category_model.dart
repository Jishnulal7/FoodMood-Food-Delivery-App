import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class BrandCategory extends Equatable {
  final int id;
  final String name;
  final Image image;

  const BrandCategory({
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

  static List<BrandCategory> brandCategories = [
    BrandCategory(
      id: 1,
      name: 'KFC',
      image: Image.asset(
        'assets/images/KFC_logo 1.png',
      ),
    ),
    BrandCategory(
      id: 2,
      name: "McDonald’s",
      image: Image.asset(
        "assets/images/McDonald's_Golden_Arches 1.png",
      ),
    ),
    BrandCategory(
      id: 3,
      name: 'Burger King',
      image: Image.asset(
        'assets/images/Burger_King_logo_(1999) 1.png',
      ),
    ),
    BrandCategory(
      id: 4,
      name: 'Pizza Hut',
      image: Image.asset(
        'assets/images/Pizza_Hut_logo 1.png',
      ),
    ),
    BrandCategory(
      id: 5,
      name: 'Starbucks',
      image: Image.asset(
        'assets/images/Starbucks_Corporation_Logo_2011 1.png',
      ),
    ),
    BrandCategory(
      id: 6,
      name: 'Mousy',
      image: Image.asset(
        "assets/images/Domino's_pizza_logo 1.png",
      ),
    ),
    BrandCategory(
      id: 7,
      name: 'Juicy',
      image: Image.asset(
        "assets/images/Haldiram's_Logo_SVG 1.png",
      ),
    ),
    BrandCategory(
      id: 8,
      name: 'Chic King',
      image: Image.asset(
        'assets/images/north-indian.png',
      ),
    ), 
    BrandCategory(
      id: 9,
      name: 'Fruit Bae',
      image: Image.asset(
        'assets/images/south-indian.png',
      ),
    ),
  ];
}
