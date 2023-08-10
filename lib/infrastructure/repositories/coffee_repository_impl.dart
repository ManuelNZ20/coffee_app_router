
import 'package:coffee_app_routes/domain/datasources/coffee_datasource.dart';
import 'package:coffee_app_routes/domain/entities/coffee.dart';
import 'package:coffee_app_routes/domain/repositories/coffee_repositorie.dart';

class CoffeeRepositoryImpl extends CoffeeRepository {
  final CoffeeDataSource coffeeDataSource;

  CoffeeRepositoryImpl({required this.coffeeDataSource});

  @override
  Future<List<Coffee>> getTrendingCoffee() {
    return coffeeDataSource.getTrendingCoffee();
  }

}
