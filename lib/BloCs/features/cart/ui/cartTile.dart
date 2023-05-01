// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:vacationvproject/BloCs/features/home/ui/models/homeproductdata.dart';

import '../bloc/cart_bloc_bloc.dart';

class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.productDataModel,
    required this.cartBloc,
  }) : super(key: key);
  final ProductDataModel productDataModel;

  final CartBloc cartBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.teal)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.maxFinite,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(productDataModel.imageUrl))),
        ),
        const SizedBox(height: 20),
        Text(
          productDataModel.name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          productDataModel.description,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${productDataModel.price}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      // cartBloc.add(HomeProductWishlistButtonClickedEvent(
                      //     clickedProduct: productDataModel));
                    },
                    icon: Icon(Icons.favorite_border_outlined)),
                IconButton(
                    onPressed: () {
                      cartBloc.add(CartRemoveFromCart(selectedItemToRemove: productDataModel));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("${productDataModel.name} removed from cart"),
                        duration: Duration(seconds: 1),
                      ));
                    },
                    icon: Icon(Icons.shopping_cart))
              ],
            ),
          ],
        )
      ]),
    );
  }
}
