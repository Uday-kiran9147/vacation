import 'package:flutter/material.dart';

import '../phonePe.dart';

class Picon extends StatelessWidget {
  const Picon({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: appBarColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
