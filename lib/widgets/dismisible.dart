import 'package:flutter/material.dart';

class Dismissible_Widget extends StatefulWidget {
  const Dismissible_Widget({super.key});

  @override
  State<Dismissible_Widget> createState() => _Dismissible_WidgetState();
}

class _Dismissible_WidgetState extends State<Dismissible_Widget> {
  List<String> listname = [
    'orange',
    'apple',
    'banana',
    'pineapple',
    'papaya',
    'uday'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dismissable widget"),
        ),
        body: ListView.builder(
            itemCount: listname.length,
            itemBuilder: (context, index) {
              return Dismissible(
                background: Container(
                    // child: Text('data'),
                    color: Colors.red),
                secondaryBackground: Container(
                  color: Colors.green,
                ),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: const Duration(milliseconds: 2000),
                        backgroundColor: Colors.red,
                        content: Text(listname[index])));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: const Duration(milliseconds: 2000),
                        backgroundColor: Colors.green,
                        content: Text(listname[index])));
                  }
                },
                key: Key(listname[index]),
                child: Card(
                  margin: const EdgeInsets.all(5),
                  child: ListTile(
                    title: Text(listname[index]),
                  ),
                ),
              );
            }));
  }
}
