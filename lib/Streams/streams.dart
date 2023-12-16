import 'dart:async';

import 'package:flutter/material.dart';

class StreamsExample extends StatefulWidget {
  const StreamsExample({super.key});

  @override
  State<StreamsExample> createState() => _StreamsExampleState();
}

class _StreamsExampleState extends State<StreamsExample> {
  // stream controller
  final StreamController<String> _streamController = StreamController<String>();

  // for multiple streambuilders we need to use broadcast stream
  late Stream<String> _stream;
  final TextEditingController _textEditingController = TextEditingController();
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
        title: const Text('Streams Example'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Streams', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(
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
                        style: const TextStyle(fontWeight: FontWeight.bold));
                  }
                  return const Text(
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
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    );
                  } else {
                    return const Text('No data');
                  }
                },
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          StreamBuilder(
            stream: _stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                );
              } else {
                return const Text('No data');
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
                child: const Text('submit')),
          )
        ],
      )),
    );
  }
}
