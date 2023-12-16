// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


import 'package:vacationvproject/BloCs/features/home/ui/models/homeproductdata.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {

  final List<ProductDataModel> productdata;
   HomeLoadedSuccessState({
    required this.productdata,
  });
  
}

class HomeErrorState extends HomeState {}

class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}

class HomeProductItemWishlistedActionState extends HomeActionState {}

class HomeProductItemCartedActionState extends HomeActionState {}
