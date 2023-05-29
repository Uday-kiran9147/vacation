import 'dart:async';

import 'package:flutter/material.dart';

class StreamsExample extends StatefulWidget {
  StreamsExample({super.key});

  @override
  State<StreamsExample> createState() => _StreamsExampleState();
}

class _StreamsExampleState extends State<StreamsExample> {
  // stream controller
  StreamController<String> _streamController = new StreamController<String>();

  // for multiple streambuilders we need to use broadcast stream
  late Stream<String> _stream;
  TextEditingController _textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // initializing the stream
    // asBroadcaststream allows us to use the stream in multiple widgets
    _stream = _streamController.stream.asBroadcastStream(); // returns stream
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Streams Example'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Streams', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StreamBuilder<String>(
                initialData: "initial streams",
                stream: _stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data ?? "No input data",
                        style: TextStyle(fontWeight: FontWeight.bold));
                  }
                  return Text(
                    "No data",
                  );
                },
              ),
              StreamBuilder(
                initialData: "initial streams",
                stream: _stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    );
                  } else {
                    return Text('No data');
                  }
                },
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          StreamBuilder(
            stream: _stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              } else {
                return Text('No data');
              }
            },
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.3,
            child: TextFormField(
              controller: _textEditingController,
              onChanged: (value) {
                _streamController.sink.add(_textEditingController.text);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ElevatedButton(
                onPressed: () {
                  _streamController.sink.add(_textEditingController.text);
                  // print(_textEditingController.text);
                },
                child: Text('submit')),
          )
        ],
      )),
    );
  }
}
