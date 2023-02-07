import 'package:flutter/material.dart';

class BottomSheet_Widget extends StatelessWidget {
  const BottomSheet_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AlerDialog_Widget")),
      body: Container(
          child: Center(
        child: ElevatedButton(
          child: const Text("Elevated Button"),
          onPressed: () {
            showModalBottomSheet(
                isDismissible: true,
                enableDrag: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                backgroundColor: Theme.of(context).primaryColor,
                context: context,
                builder: (context) {
                  return const SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Apple"),
                          subtitle: Text("by uday"),
                        ),
                        ListTile(
                          title: Text("ball"),
                          subtitle: Text("by doroman"),
                        ),
                        ListTile(
                          title: Text("Cat"),
                          subtitle: Text("by flutter"),
                        ),
                        ListTile(
                          title: Text("Dog"),
                          subtitle: Text("by namkeen"),
                        ),
                        ListTile(
                          title: Text("Elephant"),
                          subtitle: Text("by ironman"),
                        ),
                        ListTile(
                          title: Text("Fish"),
                          subtitle: Text("by superman"),
                        ),
                        ListTile(
                          title: Text("grapes"),
                          subtitle: Text("by mouse"),
                        ),
                        ListTile(
                          title: Text("Papaya"),
                          subtitle: Text("by keyboard"),
                        ),
                      ],
                    ),
                  );
                });
          },
        ),
      )),
    );
  }
}
