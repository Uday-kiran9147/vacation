import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:vacationvproject/BloCs/data/wishlist.dart';
import 'package:vacationvproject/BloCs/features/home/ui/models/homeproductdata.dart';

part 'wishlist_bloc_event.dart';
part 'wishlist_bloc_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(wishlistInitialEvent);
    on<WishlistremoveFromListEvent>(wishlistremoveFromCart);
  }

  FutureOr<void> wishlistInitialEvent(
      WishlistInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishlistremoveFromCart(
      WishlistremoveFromListEvent event, Emitter<WishlistState> emit) {
    wishlistItems.remove(event.selectedItemToRemove);
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }
}
