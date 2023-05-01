import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vacationvproject/BloCs/features/cart/bloc/cart_bloc_bloc.dart';

import 'ui/cartTile.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartBloc cartBloc = CartBloc();
  @override
  void initState() {
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: BlocConsumer<CartBloc, CartState>(
        bloc: cartBloc,
        listener: (context, state) {},
        listenWhen: (previous, current) => current is CartActionState,
        buildWhen: (previous, current) => current is! CartActionState,
        builder: (context, state) {
          switch (state.runtimeType) {
            case CartSuccessState:
              final cartSuccesState = state as CartSuccessState;
              return ListView.builder(
                itemCount: cartSuccesState.cartItems.length,
                itemBuilder: (context, index) => CartItem(
                    cartBloc: cartBloc,
                    productDataModel: cartSuccesState.cartItems[index]),
                // ),
              );
              // No break keyword is needed of we return something.
              // break;
            default:
              // return SizedBox(
              //     child: Center(child: CircularProgressIndicator()));
          }
          return SizedBox(
                  );

        },
      ),
    );
  }
}
