import 'package:coffee_app_routes/domain/entities/coffee.dart';
import 'package:coffee_app_routes/domain/repositories/coffee_repositorie.dart';
import 'package:flutter/material.dart';

class CoffeeProvider extends ChangeNotifier {
  final CoffeeRepository coffeeRepository;
  final List<Coffee> coffee = [];
  CoffeeProvider({required this.coffeeRepository});

  Future<void> addCoffeeData() async {
    final newCoffee = await coffeeRepository.getTrendingCoffee();
    coffee.addAll(newCoffee);
    notifyListeners();
  }

}