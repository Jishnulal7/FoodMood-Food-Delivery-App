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
        tags: const ['Fast Food', 'Burgers'],
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
        tags: const ['Shake', "Drinks"],
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
      imageAsset: 'assets/images/shourav-sheikh-a66sGfOnnqQ-unsplash.jpg',
      name: 'Pizza Riccotta',
      tags: const ['Pizza', 'Drinks'],
      deliveryTime: 50,
      deliveryFee: 49,
      distance: 10.4,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 4)
          .toList(),
    ),
    Restaurant(
      id: 5,
      imageAsset:
          'assets/images/side-view-rice-garnish-with-fried-onion-carrot-greens-chili-pepper-table.jpg',
      name: 'Food Stories',
      tags: const ['Biriyani', 'Chinese', 'Drinks', 'Arabian', 'Veg'],
      deliveryTime: 40,
      deliveryFee: 79,
      distance: 9,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 5)
          .toList(),
    ),
    Restaurant(
      id: 6,
      imageAsset:
          'assets/images/side-view-baked-chicken-with-cucumber-lemon-seasoning-bread-table.jpg',
      name: 'Nahdi Kuzhimandhi',
      tags: const ['Arabian'],
      deliveryTime: 43,
      deliveryFee: 79,
      distance: 13,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 6)
          .toList(),
    ),
    Restaurant(
      id: 7,
      imageAsset:
          'assets/images/side-view-shawarma-pita-roll-with-chicken-fried-potatoes.jpg',
      name: 'Shawarma Fusion',
      tags: const ['Drinks', 'Rolls'],
      deliveryTime: 55,
      deliveryFee: 89,
      distance: 13.4,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 7)
          .toList(),
    ),
    Restaurant(
      id: 8,
      imageAsset: 'assets/images/anthony-espinosa-6iqpLKqeaE0-unsplash.jpg',
      name: 'Planet Cafe',
      tags: const ['Deserts', 'Drinks', 'Burgers', 'Rolls', 'Pizza'],
      deliveryTime: 51,
      deliveryFee: 99,
      distance: 10,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 8)
          .toList(),
    ),
    Restaurant(
      id: 9,
      imageAsset: 'assets/images/ikhsan-baihaqi-RwAXb8Hv_sU-unsplash.jpg',
      name: 'Gustoso',
      tags: const ['Chinese', 'North Indian', 'Arabian'],
      deliveryTime: 53,
      deliveryFee: 89,
      distance: 11,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 9)
          .toList(),
    ),
    Restaurant(
      id: 10,
      imageAsset: 'assets/images/whole-chicken-grill-served-with-rice-garnish-white-plate.jpg',
      name: 'Mazali',
      tags: const ['Chinese', 'North Indian', 'Arabian'],
      deliveryTime: 12,
      deliveryFee: 79,
      distance: 10,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 10)
          .toList(),
    ),
    Restaurant(
      id: 11,
      imageAsset: 'assets/images/sahal-hameed-Nq9KlQTTEbQ-unsplash.jpg',
      name: 'Impastio',
      tags: const ['Pizza', 'Drinks'],
      deliveryTime: 12,
      deliveryFee: 79,
      distance: 10,
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 11)
          .toList(),
    ),
  ];
}
