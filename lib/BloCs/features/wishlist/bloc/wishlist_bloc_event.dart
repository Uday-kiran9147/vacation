// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'wishlist_bloc_bloc.dart';

@immutable
abstract class WishlistEvent {}
class WishlistInitialEvent extends WishlistEvent {}

class WishlistremoveFromListEvent extends WishlistEvent {
  final ProductDataModel selectedItemToRemove;
  WishlistremoveFromListEvent({
    required this.selectedItemToRemove,
  });
}
