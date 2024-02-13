// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:vacationvproject/UI/phonePe/phonePe.dart';
import 'package:vacationvproject/UI/phonePe/widgets/p_icon.dart';

import '../widgets/component_header.dart';
import 'home_container.dart';

class TransferMoney extends StatelessWidget {
  const TransferMoney({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      height: size.height * 0.18,
      child:const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ComponentHeader(title: "  Transfer Money"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Picon(
                icon: Icons.person_outline_sharp,
                text: 'To Mobile\nNumber',
              )),
              Expanded(
                  child: Picon(
                icon: Icons.home,
                text: 'To Bank/\nUPI ID',
              )),
              Expanded(
                  child: Picon(
                icon: Icons.reset_tv_sharp,
                text: 'To Self\nAccount',
              )),
              Expanded(
                  child: Picon(
                icon: Icons.account_balance_outlined,
                text: 'Check\nBalance',
              )),
            ],
          ),
        ],
      ),
    );
  }
}



