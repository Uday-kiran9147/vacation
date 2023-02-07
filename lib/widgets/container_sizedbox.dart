import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Container_sizedBox extends StatelessWidget {
  const Container_sizedBox({super.key});
// place holder
//cjildren holder
// have many parameters

//Sized box for spacing btw widgets
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container and Sized Box"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 30, spreadRadius: 5, color: Colors.black)
                ],
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))
                //BorderRadius.circular(20)
                ),
            height: 100,
            width: 100,
            // padding: EdgeInsets.all(8),
            child: Center(
                child: Container(
              margin: EdgeInsets.all(20),  //

              // height: 12,
              color: Colors.amber,
            ))),
      ),
    );
  }
}
