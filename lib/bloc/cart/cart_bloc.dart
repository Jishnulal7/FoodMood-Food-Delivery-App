// ignore_for_file: override_on_non_overriding_member

import 'dart:async';
import 'dart:ffi';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery/models/cart_model.dart';
import 'package:food_delivery/models/menu_item_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading());


  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is StartCart) {
      yield* _mapStartBasketToState();
    } else if (event is AddItem) {
      yield* _mapAddItemToState(event, state);
    } else if (event is RemoveItem) {
      yield* _mapRemoveItemToState(event, state);
    }
  }
}

Stream<CartState> _mapStartBasketToState() async* {
  yield CartLoading();
  try {
    await Future<Void>.delayed(const Duration(seconds: 1));
    yield const CartLoaded(cart: Cart());
  } catch (_) {}
}

Stream<CartState> _mapAddItemToState(
  AddItem event,
  CartState state,
) async* {
  if (state is CartLoaded) {
    try {
      yield CartLoaded(
        cart: state.cart.copyWith(
          items: List.from(state.cart.items)..add(event.item),
        ),
      );
    } catch (_) {}
  }
}

Stream<CartState> _mapRemoveItemToState(
  RemoveItem event,
  CartState state,
) async* {
  if (state is CartLoaded) {
    try {
      yield CartLoaded(
        cart: state.cart.copyWith(
          items: List.from(state.cart.items)..remove(event.item),
        ),
      );
    } catch (_) {}
  }
}
