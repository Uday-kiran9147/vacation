import 'package:flutter/material.dart';

class DataBase extends StatelessWidget {
  const DataBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Database")),
      body: Container(
          child: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('create')),
          ElevatedButton(onPressed: () {}, child: Text('retrive')),
          ElevatedButton(onPressed: () {}, child: Text('Update')),
          ElevatedButton(onPressed: () {}, child: Text('Delete')),
        ],
      )),
    );
  }
}
