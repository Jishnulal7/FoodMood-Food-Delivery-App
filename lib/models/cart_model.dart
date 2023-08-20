// import 'package:equatable/equatable.dart';
// import 'package:food_delivery/models/menu_item_model.dart';

// class Cart extends Equatable {
//   final List<MenuItem> items;

//   const Cart({this.items = const <MenuItem>[]});

//   Cart copyWith({
//     List<MenuItem>? items,
//   }) {
//     return Cart(items: items ?? this.items);
//   }

//   @override
//   List<Object?> get props => [items];

//   Map itemQuantity(item) {
//     // ignore: prefer_collection_literals
//     var quantity = Map();

//     // ignore: avoid_function_literals_in_foreach_calls
//     items.forEach((item) {
//       if (quantity.containsKey(item)) {
//         quantity[item] = 1;
//       } else {
//         quantity[item] += 1;
//       }
//     });
//     return quantity;
//   }

//   double get subtotal =>
//       items.fold(0, (total, current) => total + current.price);

//   double total(subtotal) {
//     return subtotal + 5;
//   }

//   String get subTotalString => subtotal.toStringAsFixed(2);

//   // ignore: non_constant_identifier_names
//   String get TotalString => total(subtotal).toStringAsFixed(2);
// }


import 'package:food_mood_app/models/menu_item_model.dart';

import 'models.dart';

class Cart extends Equatable {
  final List<MenuItem> items;

  const Cart({this.items = const <MenuItem>[]});

  Cart copyWith({
    List<MenuItem>? items,
  }) {
    return Cart(items: items ?? this.items);
  }

  @override
  List<Object?> get props => [items];

  Map<MenuItem, int> itemQuantity(List<MenuItem> items) {
    var quantity = <MenuItem, int>{};

    for (var item in items) {
      if (quantity.containsKey(item)) {
        quantity[item] = quantity[item]! + 1;
      } else {
        quantity[item] = 1;
      }
    }

    return quantity;
  }

  double get subtotal =>
      items.fold(0, (total, current) => total + current.price);

  double total(subtotal) {
    return subtotal + 5;
  }

  String get subTotalString => subtotal.toStringAsFixed(2);

  // ignore: non_constant_identifier_names
  String get TotalString => total(subtotal).toStringAsFixed(2);
}
