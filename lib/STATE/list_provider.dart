import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier {
  List<int> numberslist = [1];

  void add() {
    int last = numberslist.last;
    numberslist.add(last + 1);
    notifyListeners();
  }
}
