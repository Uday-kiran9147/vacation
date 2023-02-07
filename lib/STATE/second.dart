import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';



class Second extends StatefulWidget {
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberprovider, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(numberprovider.numberslist.last.toString()),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numberprovider.numberslist.length,
                    itemBuilder: (context, index) {
                      return Text(numberprovider.numberslist[index].toString());
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Second"))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => numberprovider.add(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
