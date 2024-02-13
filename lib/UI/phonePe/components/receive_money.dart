// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vacationvproject/UI/phonePe/components/transfer_money_section.dart';

import '../widgets/component_header.dart';
import 'home_container.dart';

class ReceiveMoney extends StatelessWidget {
  const ReceiveMoney({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return HomeContainer(
      height: size.height * 0.08,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ComponentHeader(
                  title: "Receive Money",
                  // style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.qr_code,
                      size: 15,
                    ),
                    Text('  UPI ID: 19241036@ybl'),
                  ],
                ),
              ],
            ),
            Spacer(flex: 2),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
