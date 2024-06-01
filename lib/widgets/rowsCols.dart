import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowsCOls extends StatelessWidget {
  const RowsCOls({super.key});

  @override
  Widget build(BuildContext context) {
    // var W = MediaQuery.of(context).size.width;
    // var H = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("rows and columns"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: 150,
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
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Image.asset(
                          "assets/noimage.jpeg",
                        )),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2)),
                              height: 80,
                              width: double.infinity,
                              child: Text("Name")),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2)),
                              height: 80,
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text("Desctiption")),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2)),
                              height: 80,
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text("Price")),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
