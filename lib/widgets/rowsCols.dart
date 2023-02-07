import 'package:flutter/material.dart';

class RowsCOls extends StatelessWidget {
  const RowsCOls({super.key});

  @override
  Widget build(BuildContext context) {
    var W = MediaQuery.of(context).size.width;
    var H = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("rows and columns"),
      ),
      body: Container(
        height: 250,
        width:150,
        color: Colors.amber,
        child: Wrap(
          direction: Axis.vertical,
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              height: 60,
              width: 60,
            ),
            Container(
              color: Colors.pink,
              height: 60,
              width: 60,
            ),
            Container(
              color: Colors.green,
              height: 60,
              width: 60,
            ),
            Container(
              color: Colors.blue,
              height: 60,
              width: 60,
            )
          ],
        ),
      ),
    );
  }
}
