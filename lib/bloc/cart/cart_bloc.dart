import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_mood_app/models/menu_item_model.dart';
import '../../models/cart_model.dart';
import '../../models/models.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartLoaded(cart: Cart())) {
    on<StartCart>(_onStartCart);
    on<AddItem>(_onAddItem);
    on<RemoveItem>(_onRemoveItem);
    on<RemoveAllItems>(_onRemoveAllItems);
  }

  void _onStartCart(
    StartCart event,
    Emitter<CartState> emit,
  ) async {
    // Initialize the cart
    Cart cart = const Cart();

    // Emit the CartLoaded state
    emit(CartLoaded(cart: cart));
  }

  void _onAddItem(
    AddItem event,
    Emitter<CartState> emit,
  ) {
    // Check if the item is already in the cart
    final currentCart = state.cart;
    final item = event.item;
    bool isItemInCart =
        currentCart.items.any((existingItem) => existingItem == item);

    // If the item is not in the cart, add it
    if (!isItemInCart) {
      Cart updatedCart =
          currentCart.copyWith(items: [...currentCart.items, item]);
      emit(CartLoaded(cart: updatedCart));
    } else {
      // If the item is already in the cart, increase the quantity
      Cart updatedCart = currentCart.copyWith(
        items: currentCart.items.map((existingItem) {
          if (existingItem == item) {
            return existingItem.copyWith(quantity: existingItem.quantity + 1);
          } else {
            return existingItem;
          }
        }).toList(),
      );
      emit(CartLoaded(cart: updatedCart));
    }
  }

  void _onRemoveItem(
    RemoveItem event,
    Emitter<CartState> emit,
  ) {
    // Check if the item is actually in the cart
    var cart = state.cart;
    final item = event.item;
    bool isItemInCart = cart.items.any((existingItem) => existingItem == item);

    // If the item is in the cart, remove it
    if (isItemInCart) {
      cart = cart.copyWith(
          items: cart.items
              .where((existingItem) => existingItem != item)
              .toList());
      emit(CartLoaded(cart: cart));
    }
  }

  void _onRemoveAllItems(
    RemoveAllItems event,
    Emitter<CartState> emit,
  ) {
    // Loop through all of the items in the cart and remove them
    var cart = state.cart;
    cart = cart.copyWith(items: []);
    emit(CartLoaded(cart: cart));
  }
}
