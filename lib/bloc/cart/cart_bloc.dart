import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery/models/cart_model.dart';
import 'package:food_delivery/models/menu_item_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) {
    on<StartCart>(_onStartCart);
    on<AddItem>(_onAddItem);
    on<RemoveItem>(_onRemoveItem);
    on<RemoveAllItems>(_onRemoveAllItems);
  }

  void _onStartCart(
    StartCart event,
    Emitter<CartState> emit,
  ) async {
    // print('AddItem event received');
    emit(CartLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit( const CartLoaded(cart: Cart()));
      // print('Cart state updated with added item');
    } catch (_) {}
  }

  void _onAddItem(
    AddItem event,
    Emitter<CartState> emit,
  ) {
    // print('event inside addItem fun:$event');
    final state = this.state;
    if (state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: state.cart.copyWith(
              items: List.from(state.cart.items)..add(event.item),
            ),
          ),
        );
        // print('event .... addItem..... fun:${event.item}');
        // print('event .... addItem..... fun:${state.cart.items}');
      } catch (_) {
        // print('Smthng went wrong ...above print stmnt not working');
      }
    }
  }

  void _onRemoveItem(
    RemoveItem event,
    Emitter<CartState> emit,
  ) {
    // print('RemoveItem event received');
    final state = this.state;
    if (state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: state.cart.copyWith(
              items: List.from(state.cart.items)..remove(event.item),
            ),
          ),
        );
        // print('Cart state updated with removed item');
      } catch (_) {}
    }
  }

  void _onRemoveAllItems(
    RemoveAllItems event,
    Emitter<CartState> emit,
  ) {
    final state = this.state;
    // print('RemoveAllItems event received');
    if (state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: state.cart.copyWith(
              items: List.from(state.cart.items)
                ..removeWhere((item) => item == event.item),
            ),
          ),
        );
        // print('Cart state updated with all items removed');
      } catch (_) {}
    }
  }
}
