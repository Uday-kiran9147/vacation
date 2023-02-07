import 'package:flutter/material.dart';

class DataBase extends StatelessWidget {
  const DataBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Database")),
      body: Column(
        children: [
      ElevatedButton(onPressed: () {}, child: const Text('create')),
      ElevatedButton(onPressed: () {}, child: const Text('retrive')),
      ElevatedButton(onPressed: () {}, child: const Text('Update')),
      ElevatedButton(onPressed: () {}, child: const Text('Delete')),
        ],
      ),
    );
  }
}
