import 'package:flutter/material.dart';

import '../phonePe.dart';

class PiconRow extends StatelessWidget {
  PiconRow({
    super.key,
    required this.title,
    required this.icon,
    this.url,
  });
  final String title;
  final IconData icon;
  String? url;

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
          child: url == null
              ? Icon(
                  icon,
                  color: Colors.white,
                  size: 40,
                )
              : SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.network(
                      url!,
                      fit: BoxFit.cover,
                    ),
                  ),
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
