import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vacationvproject/http/Album.dart';

class Fetchdata extends StatefulWidget {
  const Fetchdata({super.key});

  @override
  State<Fetchdata> createState() => _FetchdataState();
}

class _FetchdataState extends State<Fetchdata> {
  late Future<Albums> futureAlbum;
  List <Albums> list=[];
  Future<Albums> fetchAlbum() async {
    final response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/albums/'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON
      print(response.body);
       list = albumsFromJson(response.body);
      return Albums.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("failed to load albums");
    }
  }

  @override
  void initState() {
    super.initState();

    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fetch Data Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Fetch Data Example'),
            ),
            body: Center(
              child: FutureBuilder<Albums>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.title);
                  } else if (snapshot.hasError) {
                    print(snapshot.error);
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                },
              ),
            )));
  }
}
