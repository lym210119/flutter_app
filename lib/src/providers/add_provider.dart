import 'package:flutter/material.dart';

class AddProvider extends ChangeNotifier {
  int curNum = 0;

  plus() {
    curNum+=1;
    notifyListeners();
  }

  minus() {
    curNum-=1;
    notifyListeners();
  }
}