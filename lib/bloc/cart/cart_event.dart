part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class StartCart extends CartEvent {
  @override
  List<Object> get props => [];
}

class AddItem extends CartEvent {
  final MenuItem item;

  const AddItem(this.item);
  @override
  List<Object> get props => [item];
}

class RemoveItem extends CartEvent {
  final MenuItem item;

  const RemoveItem(this.item);
  @override
  List<Object> get props => [item];
}
class RemoveAllItems extends CartEvent {
  final MenuItem item;

  const RemoveAllItems(this.item);

  @override
  List<Object> get props => [item];
}