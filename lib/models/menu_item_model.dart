import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restaurantId;
  final String name;
  final String description;
  final double price;

  const MenuItem({
    required this.id,
    required this.restaurantId,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props => [
        id,
        restaurantId,
        name,
        description,
        price,
      ];
  static List<MenuItem> menuItems = [
    const MenuItem(
        id: 1,
        restaurantId: 1,
        name: 'Burger',
        description: 'Classic Zinger',
        price: 199),
    const MenuItem(
        id: 1,
        restaurantId: 1,
        name: 'Chicken & Fries Bucket',
        description: 'Crowd-favorite combo Chicken and Medium fries',
        price: 299),
    const MenuItem(
        id: 1,
        restaurantId: 1,
        name: 'Buddy Meal',
        description: '2 Classic Chicken Zingers & Medium Popcorn',
        price: 530),
    const MenuItem(
        id: 1,
        restaurantId: 1,
        name: 'Pepsi',
        description: 'Cold BEverage',
        price: 50)
  ];
}
