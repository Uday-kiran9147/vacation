import 'package:flutter/material.dart';

class ComponentHeader extends StatelessWidget {
  const ComponentHeader({
    Key? key,
    required this.title,
  }) : super(key: key);
 final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        "$title",
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}