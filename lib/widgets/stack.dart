import 'package:flutter/material.dart';

class Stack_Widget extends StatefulWidget {
  const Stack_Widget({super.key});

  @override
  State<Stack_Widget> createState() => _Stack_WidgetState();
}

class _Stack_WidgetState extends State<Stack_Widget> {
  String dropdownvalue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text("Stack")),
        body: Container(
          // color:Colors.cyan,
          child: Center(
            child: Stack(children: [
              Positioned(
                top: 10,
                left: 40,
                child: Container(
                  height: 400,
                  width: 400,
                  color: Colors.red,
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  )),
              Positioned(
                right: 20,
                bottom: 40,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width: 70,
                  color: Colors.pink,
                ),
              )
            ]),
          ),
        ));
  }
}
