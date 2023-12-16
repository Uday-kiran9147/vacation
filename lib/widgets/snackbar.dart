import 'package:flutter/material.dart';
import 'package:vacationvproject/widgets/Buttons.dart';

// ignore: must_be_immutable
class SnackBar_widget extends StatelessWidget {
  SnackBar_widget({super.key});
  var snack_bar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: ElevatedButton(
          onPressed: () => {
            snack_bar = SnackBar(
                action: SnackBarAction(
                  label: "undo",
                  textColor: Colors.white,
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Buttons();
                    }))
                  },
                ),
                // padding: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                duration: const Duration(milliseconds: 3000),
                backgroundColor: Colors.green,
                content: const Text("This is a snack bar")),
            ScaffoldMessenger.of(context).showSnackBar(snack_bar),
          },
          child: const Text("Snack bar"),
        ),
      )),
    );
  }
}
