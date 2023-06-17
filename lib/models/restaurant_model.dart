import 'package:equatable/equatable.dart';

import 'menu_item_model.dart';

class Restaurant extends Equatable {
  final int id;
  final String imageAsset;
  final String name;
  final List<String> tags;
  final List<MenuItem> menuItems;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  const Restaurant(
      {required this.id,
      required this.imageAsset,
      required this.name,
      required this.tags,
      required this.deliveryTime,
      required this.deliveryFee,
      required this.distance,
      required this.menuItems});

  @override
  List<Object?> get props => [
        id,
        imageAsset,
        name,
        tags,
        menuItems,
        deliveryFee,
        deliveryTime,
        distance,
      ];
  static List<Restaurant> restaurants = [
    Restaurant(
        id: 1,
        imageAsset: 'assets/images/nik-fHGdXjY6JWI-unsplash.jpg',
        name: 'KFC',
        tags: const ['Fast Food', 'Burger'],
        deliveryTime: 46,
        deliveryFee: 49,
        distance: 9,
        menuItems: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 1)
            .toList()),
    Restaurant(
        id: 2,
        imageAsset: 'assets/images/victor-rutka-4FujjkcI40g-unsplash.jpg',
        name: "Juicy",
        tags: const ['Shake', "Juices"],
        deliveryTime: 30,
        deliveryFee: 47,
        distance: 8,
        menuItems: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 2)
            .toList()),
    Restaurant(
      id: 3,
      imageAsset: 'assets/images/amirali-mirhashemian-sc5sTPMrVfk-unsplash.jpg',
      name: 'Just Loaf',
      tags: const ["Fast Food", 'Burgers'],
      deliveryTime: 64,
      deliveryFee: 48,
      distance: 9,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 3)
          .toList(),
    ),
    Restaurant(
      id: 4,
      imageAsset: '',
      name: 'Pizza Riccotta',
      tags: const [
        'Pizza',
      ],
      deliveryTime: 50,
      deliveryFee: 49,
      distance: 10.4,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 4)
          .toList(),
    )
  ];
}
