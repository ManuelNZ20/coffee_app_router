import 'package:flutter/material.dart';

class CounterOrderProvider extends ChangeNotifier {
  int _counter = 1;
 
  int get counter => _counter;

  void addOrderProduct() {
    _counter++;
    notifyListeners();
  }

  void removeOrderProduct() {
    if (counter == 1) return;
    _counter--;
    notifyListeners();
  }

  void reloadCounter() {
    _counter  = 1;
    notifyListeners();
  }
}
