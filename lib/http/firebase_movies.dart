import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {

  
  @override
  Widget build(BuildContext context) {

    getdata(){
      //to be implemented
    }
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future:null ,
        builder: (context, snapshot) => ListView.builder(
          itemBuilder: (context, index) {
            return const Card(
              child: ListTile(),
            );
          },
        ),
      ),
    );
  }
}
