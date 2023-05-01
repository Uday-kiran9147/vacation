// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc_bloc.dart';

@immutable
abstract class CartEvent {}

class CartInitialEvent extends CartEvent {}

class CartRemoveFromCart extends CartEvent {
  final ProductDataModel selectedItemToRemove;
  CartRemoveFromCart({
    required this.selectedItemToRemove,
  });
}
