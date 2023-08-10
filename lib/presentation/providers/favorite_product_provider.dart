import 'package:flutter/material.dart';

class MyAppState  extends ChangeNotifier {

  final List<String> favorites = [];
  void toggleFavorite(String name) {
    if(favorites.contains(name)) {
      favorites.remove(name);
    }else {
      favorites.add(name);
    }
    notifyListeners();
  }
}