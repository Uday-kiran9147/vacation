import 'package:flutter/material.dart';

class AlerDialog_Widget extends StatelessWidget {
  const AlerDialog_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AlerDialog_Widget")),
      body: Container(
          child: Center(
        child: ElevatedButton(
          child: const Text("Elevated Button"),
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
                child: const Text(
                  "Allow",
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Deny", style: TextStyle(color: Colors.black)))
          ],
          title: const Text("This is alert dialog"),
          content: const SingleChildScrollView(
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
