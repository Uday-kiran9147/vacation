import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class List_Grid extends StatelessWidget {
  const List_Grid({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listname = [
      'uday',
      'ajay',
      'nani',
      'teja',
      'shiva',
      'chintu',
      'uday',
      'ajay',
      'nani',
      'teja',
      'shiva',
      'chintu',
      'uday',
      'ajay',
      'nani',
      'teja',
      'shiva',
      'chintu'
    ];
    Map listname2 = {
      "name": [
        'uday',
        'ajay',
        'uday',
        'ajay',
        'nani',
        'teja',
        'shiva',
        'chintu',
        'nani',
        'teja',
        'shiva',
        'chintu',
        'uday',
        'ajay',
        'nani',
        'teja',
        'shiva',
        'chintu'
      ],
      'number': [
        'uday',
        'ajay',
        'uday',
        'ajay',
        'nani',
        'teja',
        'shiva',
        'chintu',
        'nani',
        'teja',
        'shiva',
        'chintu',
        'uday',
        'ajay',
        'nani',
        'teja',
        'shiva',
        'chintu'
      ]
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("List View And Grid View"),
      ),
        backgroundColor: Colors.black,
        body:
            // ListView.builder(
            //     itemCount: listname.length,
            //     itemBuilder: (context, index) {
            //       return Card(
            //         child: ListTile(
            //           title: Text(listname2['name'][index]),
            //           subtitle: Text(listname2['number'][index]),
            //         ),
            //       );
            //     }),
            GridView.builder(
              itemCount: 4*40,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount
              
              (
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                childAspectRatio: 2/3,
                crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Card(
              child: Center(child: Text("qwerty")),
            );
          },
        )
        );
  }
}
