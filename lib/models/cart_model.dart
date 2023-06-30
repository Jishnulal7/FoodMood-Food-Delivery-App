import 'package:equatable/equatable.dart';
import 'package:food_delivery/models/menu_item_model.dart';

// ignore: must_be_immutable
class Cart extends Equatable {
  final List<MenuItem> items;

  const Cart({
    this.items = const <MenuItem>[],
  });

  Cart copyWith({
    List<MenuItem>? items,
  }) {
    return Cart(
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props => [items];

  Map itemQuantity(items) {
    var quantity = {};
    print(items);
    items.forEach((item) {
      if (!quantity.containsKey(item)) {
        quantity[item] = 1;
      } else {
        quantity[item] += 1;
      }
    });
    print('quantity:${quantity}');
    return quantity;
  }

  double get subtotal {
    print(items);
    return items.fold(0, (total, current) => total + current.price);
  }

  double total(subtotal) {
    return subtotal + 30;
  }

  String get subTotalString => total(subtotal).toStringAsFixed(2);

  String get totalString => total(subtotal).toStringAsFixed(2);
}
