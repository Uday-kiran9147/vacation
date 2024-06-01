import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class NetWorkRequest extends StatefulWidget {
  const NetWorkRequest({Key? key}) : super(key: key);

  @override
  State<NetWorkRequest> createState() => _NetWorkRequestState();
}

class _NetWorkRequestState extends State<NetWorkRequest> {
  late StreamController<String> _streamController;
  late Stream<String> _stream;

  var messages = ['Connecting', 'Request sent', 'Success', 'Done'];

  Stream<String> fetchData() async* {
    for (int i = 0; i < messages.length; i++) {
      await Future.delayed(const Duration(seconds: 3));
      yield messages[i];
    }
  }

  @override
  void initState() {
    super.initState();
    _streamController = StreamController<String>();
    _stream = _streamController.stream.asBroadcastStream();
    _streamController.addStream(fetchData()).then((_) {
      _streamController.close();
    }).catchError((error) {
      _streamController.addError(error);
    });
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

// showdialog
  void showdialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: StreamBuilder<String>(
            stream: _stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Icon(Icons.done, color: Colors.green);
                } else {
                  return CircularProgressIndicator();
                }
              } else if (snapshot.hasError) {
                return Text('Error');
              } else {
                return Text("Requesting...");
              }
            },
          ),
          content: StreamBuilder<String>(
            stream: _stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!);
              } else {
                return Text("Connecting...");
              }
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Request'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: showdialog,
              child: Text('Make Network Request'),
            ),
            ElevatedButton(
              onPressed: ()async{
                // await Future.delayed(Duration(seconds: 3));
                HttpClient client = HttpClient();

              },
              child: Text('Try again!!'),
            ),
          ],
        ),
      ),
    );
  }
}
