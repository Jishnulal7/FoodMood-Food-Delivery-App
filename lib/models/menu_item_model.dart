import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restaurantId;
  final String name;
  final String description;
  final double price;
  final String category;

  const MenuItem(
      {required this.id,
      required this.restaurantId,
      required this.name,
      required this.description,
      required this.price,
      required this.category});

  @override
  List<Object?> get props => [
        id,
        restaurantId,
        name,
        description,
        price,
        category,
      ];
  static List<MenuItem> menuItems = [
    const MenuItem(
      id: 1,
      restaurantId: 1,
      name: 'Zinger Burgers',
      description: 'Classic Zinger',
      price: 199,
      category: 'Burgers',
    ),
    const MenuItem(
      id: 2,
      restaurantId: 1,
      name: 'Chicken & Fries Bucket',
      description: 'Crowd-favorite combo Chicken and Medium fries',
      price: 299,
      category: 'Fast Food',
    ),
    const MenuItem(
        id: 3,
        restaurantId: 1,
        name: 'Buddy Meal',
        description: '2 Classic Chicken Zingers & Medium Popcorn',
        price: 530,
        category: 'Fast Food'),
    const MenuItem(
        id: 4,
        restaurantId: 1,
        name: 'Pepsi',
        description: 'Cold BEverage',
        price: 50,
        category: 'Drinks')
  ];
}
