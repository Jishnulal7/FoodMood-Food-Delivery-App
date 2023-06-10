import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  final int id;
  final String imageAsset;
  final String name;
  final List<String> tags;
  // final List<MenuItem>
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  const Restaurant({
    required this.id,
    required this.imageAsset,
    required this.name,
    required this.tags,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.distance,
  });

  @override
  List<Object?> get props => [
        id,
        imageAsset,
        name,
        tags,
        deliveryFee,
        deliveryTime,
        distance,
      ];
  static List<Restaurant> restaurants = [];
}
