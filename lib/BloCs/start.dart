import 'package:flutter/material.dart';



import 'features/home/ui/home.dart';

class BloCHome extends StatelessWidget {
  const BloCHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: const Home(),
    );
  }
}
