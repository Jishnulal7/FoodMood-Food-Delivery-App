import 'package:equatable/equatable.dart';

class Promo extends Equatable {
  final int id;
  final String title;
  final String description;
  final String imageAsset;

  const Promo(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageAsset});

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        imageAsset,
      ];

  static List<Promo> promos = [
    const Promo(
      id: 1,
      title: 'Free Delivery on Your First 3 Orders',
      description: 'Place on order of ₹199 or more the delivery fee is on us',
      imageAsset: 'assets/images/food-photographer-E94j3rMcxlw-unsplash.jpg',
    ),
    const Promo(
      id: 2,
      title: '20% off on Selected Restaurants',
      description: 'Get a discount at more than one restaurants',
      imageAsset: 'assets/images/shreyak-singh-0j4bisyPo3M-unsplash.jpg',
    ),
    const Promo(
      id: 3,
      title: 'Top Brands Top Deals ',
      description: 'Minimum 30% off on your orders',
      imageAsset: 'assets/images/pizza-restr.png',
    )
  ];
}
