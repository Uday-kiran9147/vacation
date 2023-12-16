// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'wishlist_bloc_bloc.dart';

@immutable
abstract class WishlistState {}
abstract class WishlistActionState extends WishlistState {}
class WishlistInitial extends WishlistState {}

class WishlistSuccessState extends WishlistState {

  final List<ProductDataModel> wishlistItems;
  WishlistSuccessState({
    required this.wishlistItems,
  });
}
