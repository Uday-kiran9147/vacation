import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';

import 'model.dart';

class API_Screen extends StatefulWidget {
  const API_Screen({Key? key}) : super(key: key);

  @override
  State<API_Screen> createState() => _API_ScreenState();
}

class _API_ScreenState extends State<API_Screen> {
  List<UserDetails> userDetails = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('API'),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                  itemCount: userDetails.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getText(
                              index, 'ID: ', userDetails[index].id.toString()),
                          getText(index, 'Name: ',
                              userDetails[index].name.toString()),
                          getText(index, 'Email: ',
                              userDetails[index].email.toString()),
                          getText(index, 'Phone: ',
                              userDetails[index].phone.toString()),
                          getText(index, 'Website:',
                              userDetails[index].website.toString()),
                          getText(index, 'Company Name: ',
                              userDetails[index].company.name.toString()),
                          getText(
                            index,
                            'Address: ',
                            '${userDetails[index].address.suite.toString()}, ${userDetails[index].address.city.toString()} - ${userDetails[index].address.zipcode.toString()}',
                          )
                        ],
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Text getText(int index, String fieldName, String content) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: fieldName,
            style: (const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
          ),
          TextSpan(
            text: content,
            style: (const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }

  Future<List<UserDetails>> getData() async {
    final response = await http.get(
      Uri.parse(
        'https://jsonplaceholder.typicode.com/users',
      ),
    );

    var data = await jsonDecode(response.body);
    var view = data;
    print(view);
    print('werty');

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        userDetails.add(UserDetails.fromJson(index));
      }
      return userDetails;
    } else {
      return userDetails;
    }
  }
}
