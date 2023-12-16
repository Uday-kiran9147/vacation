import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vacationvproject/BloCs/features/wishlist/ui/wishlistTile.dart';

import 'bloc/wishlist_bloc_bloc.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  void initState() {
    wishlistBloc.add(WishlistInitialEvent());
    super.initState();
  }

  WishlistBloc wishlistBloc = WishlistBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: BlocConsumer<WishlistBloc, WishlistState>(
        bloc: wishlistBloc,
        listener: (context, state) {},
        listenWhen: (previous, current) => current is WishlistActionState,
        buildWhen: (previous, current) => current is! WishlistActionState,
        builder: (context, state) {
          switch (state.runtimeType) {
            case WishlistSuccessState:
              final wishlistSuccessState = state as WishlistSuccessState;
              return ListView.builder(
                itemCount: wishlistSuccessState.wishlistItems.length,
                itemBuilder: (context, index) => WishlistItem(
                    wishlistBloc: wishlistBloc,
                    productDataModel:
                        wishlistSuccessState.wishlistItems[index]),
              );

            default:
          }
          return const SizedBox(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
