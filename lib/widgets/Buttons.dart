import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elevated and TextButton"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                  overlayColor: MaterialStateProperty.all(Colors.deepPurple),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  elevation: MaterialStateProperty.all(10)),
              child: const Text(
                "TextButton",  // we can design textButton as a ElevatedButton by decorating.
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 50,
            width: 200,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)))),
                onPressed: (() => {}),
                child: const Text(
                  "Elevated Button",
                  style: TextStyle(color: Colors.black),
                )),
          )
        ],
      ),
    );
  }
}
