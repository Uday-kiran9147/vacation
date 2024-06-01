import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:html';

class LocalStorageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String message;
    if (kIsWeb) {
      if (window.localStorage.containsKey('my-key')) {
        message = 'from storage ${window.localStorage['my-key']}';
      } else {
        window.localStorage['my-key'] = "Hello World";
        message = 'New added Message ${window.localStorage['my-key']}';
      }
    } else {
      message = 'Local storage implemented only for web platform';
    }
    return Scaffold(
      body: Center(
        child: Text(message),
      ),
    );
  }
}
