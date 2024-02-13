
import 'package:flutter/material.dart';

import '../phonePe.dart';
import 'home_container.dart';

class Wallet_Reward_Refer extends StatelessWidget {
  const Wallet_Reward_Refer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeContainer(
          color: Color.fromARGB(255, 66, 137, 195),
          height: size.height * 0.10,
          width: size.width * 0.3,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_balance_wallet_outlined,
                    size: 30, color: Colors.white),
                Text(
                  "PhonePe Wallet",
                  style: walletTextStyle,
                ),
              ],
            ),
          ),
        ),
        HomeContainer(
          color: Color.fromARGB(255, 66, 137, 195),
          height: size.height * 0.10,
          width: size.width * 0.3,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wallet_giftcard,
                    size: 30, color: Colors.white),
                Text(
                  "Rewards",
                  style: walletTextStyle,
                ),
              ],
            ),
          ),
        ),
        HomeContainer(
          color: Color.fromARGB(255, 66, 137, 195),
          height: size.height * 0.10,
          width: size.width * 0.3,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mic_external_on_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Text("PhonePe Wallet", style: walletTextStyle),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
