import 'package:coffee_app_routes/domain/entities/coffee.dart';

abstract class CoffeeDataSource {

  Future<List<Coffee>> getTrendingCoffee();



}