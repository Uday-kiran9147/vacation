
import 'package:flutter/material.dart';

import '../phonePe.dart';

class PiconRow extends StatelessWidget {
  PiconRow({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: appBarColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
