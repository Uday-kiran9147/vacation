
import 'package:flutter/material.dart';

import '../widgets/p_icon.dart';
import 'home_container.dart';

class RechargeAndPayBills extends StatelessWidget {
  const RechargeAndPayBills({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
        height: size.height * 0.30,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '   Recharge & Pay Bills',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                
                Text(
                  'My Bills  ',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
    
            Wrap(
              spacing: 10.0,runSpacing: 15,
              direction: Axis.horizontal,
              children: [
                Picon(size: size,
                  text: 'Recharge',
                  icon: Icons.phone_android,
                ),
                Picon(size: size,
                  text: 'Electricity',
                  icon: Icons.electrical_services,
                ),
                Picon(size: size,
                  text: 'DTH',
                  icon: Icons.tv,
                ),
                Picon(size: size,
                  text: 'Credit Card',
                  icon: Icons.credit_card,
                ),
                Picon(size: size,
                  text: 'Recharge',
                  icon: Icons.phone_android,
                ),
                Picon(size: size,
                  text: 'Electricity',
                  icon: Icons.electrical_services,
                ),
                Picon(size: size,
                  text: 'DTH',
                  icon: Icons.tv,
                ),
                Picon(size: size,
                  text: 'Credit Card',
                  icon: Icons.credit_card,
                ),
              ],
            )
          ],
        ));
  }
}
