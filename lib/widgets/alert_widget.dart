import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlerDialog_Widget extends StatelessWidget {
  const AlerDialog_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AlerDialog_Widget")),
      body: Container(
          child: Center(
        child: ElevatedButton(
          child: Text("Elevated Button"),
          onPressed: () {
            _showAlerDialog(context);
          },
        ),
      )),
    );
  }
}

Future<void> _showAlerDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.cyan,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Allow",
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Deny", style: TextStyle(color: Colors.black)))
          ],
          title: Text("This is alert dialog"),
          content: SingleChildScrollView(
            //Alet dialog Must be written in a Scrollable View(SingleChildScrollView)
            child: ListBody(
              children: [
                Text("Are you sure you want to Take this Action"),
                SizedBox(
                  height: 20,
                ),
                Text("You want to Cancel this Action"),
              ],
            ),
          ),
        );
      });
}
