import 'package:flutter/material.dart';

import '../phonePe.dart';

class Picon extends StatelessWidget {
  const Picon({
    Key? key,
    required this.text,
    required this.icon,
    required this.size,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin:const EdgeInsets.only(left:8,right: 8,bottom: 8),
            height: size.height*0.069,
            width: 55,
            decoration: BoxDecoration(
                color: appBarColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
