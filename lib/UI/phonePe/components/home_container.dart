
import 'package:flutter/material.dart';

import '../phonePe.dart';

class HomeContainer extends StatelessWidget {
   HomeContainer({
    super.key,
    required this.height,
    required this.child,
    this.width,
    this.color,
  });

  final double height;
  // final String title;
  final Widget child;
  double? width ;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width:width?? double.infinity,
      child: child,
      decoration:
          BoxDecoration(color:color?? Colors.white, borderRadius: borderRadius),
    );
  }
}
