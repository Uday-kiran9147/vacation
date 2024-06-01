import 'dart:convert';

import 'package:flutter/material.dart';

import 'class.dart';

class MyAp extends StatelessWidget {
  MyAp({super.key});
  User obj =
      User(name: "uday kiran", age: 20, email: "Udaykiran91@gmail.com");

  String jsondata =
      // while writing json files through keyboard do not pass int as a string format
      /* 
        Ex:  int age = 20
              Right--> '{"age" : 20 }'  !=      '{"age" : "20" }'   <-- wrong  */
      '{"name":"Ajaykiran","age":22,"email":"Ajaykiran9147@gmail.com"}';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Map<String, dynamic> map = obj.tomap(); 
                    var json = jsonEncode(map); //converts map into json
                    print(json); // endoded to json
                  },
                  child: const Text("serialization")),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    var decode = jsonDecode(jsondata);
                    Map<String, dynamic> mapp = decode;
                    User.fromMap(mapp);
                    print(mapp.toString()); // decoded JSON ---> Object
                  },
                  child: const Text("De-serialization"))
            ],
          ),
        ),
      ),
    );
  }
}
