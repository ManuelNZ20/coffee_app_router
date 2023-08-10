import '../entities/coffee.dart';

abstract class CoffeeRepository {
  Future<List<Coffee>> getTrendingCoffee();
}