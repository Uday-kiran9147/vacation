import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:vacationvproject/BloCs/data/cart.dart';
import 'package:vacationvproject/BloCs/features/home/ui/models/homeproductdata.dart';

part 'cart_bloc_event.dart';
part 'cart_bloc_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitialState()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCart);
  }
  //FutureOr no need to write async in function body.
  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartlistItems));
  }

  FutureOr<void> cartRemoveFromCart(
      CartRemoveFromCartEvent event, Emitter<CartState> emit) {
    cartlistItems.remove(event.selectedItemToRemove);
    emit(CartSuccessState(cartItems: cartlistItems));
  }
}
