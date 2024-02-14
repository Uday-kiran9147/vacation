import 'package:flutter/material.dart';

import '../widgets/component_header.dart';
import '../widgets/p_icon_row.dart';
import 'home_container.dart';
import 'transfer_money_section.dart';

class AppsByPhonePe extends StatelessWidget {
  const AppsByPhonePe({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
        height: size.height * 0.16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComponentHeader(title: "  Apps by PhonePe"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PiconRow(icon: Icons.paypal, title: "Phonepe\nBussiness",url: "https://play-lh.googleusercontent.com/DIj92f1Tkfxm8rOTqPhlMtGsz8bboRju5v2V5ykxdGfpIAN4kTbNFfgBxpcFt5nY3KQ",),
                PiconRow(
                    icon: Icons.maps_home_work_outlined,
                    title: "PhonePe\nStocks & IPO"),
              ],
            )
          ],
        ));
  }
}
