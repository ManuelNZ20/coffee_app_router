import 'package:coffee_app_routes/domain/entities/coffeemarker.dart';
import 'package:coffee_app_routes/domain/repositories/coffee_marker_repositorie.dart';
import 'package:flutter/cupertino.dart';

class CoffeeMarkerProvider extends ChangeNotifier  {

  final CoffeeMarkerRepository coffeeMarkerRepository;
  final List<CoffeeMarker> coffeeMarker = [];
  CoffeeMarkerProvider({required this.coffeeMarkerRepository});

  Future<void> addCoffeeMarkerData() async {
    final List<CoffeeMarker> newData = await coffeeMarkerRepository.getTrendingCoffeeMarker();
    coffeeMarker.addAll(newData);
    notifyListeners();
  }

}