
import 'package:coffee_app_routes/domain/datasources/coffee_datasource.dart';
import 'package:coffee_app_routes/domain/entities/coffee.dart';
import 'package:coffee_app_routes/infrastructure/models/coffee_model.dart';
import 'package:coffee_app_routes/presentation/shared/data/coffee_data.dart';

class LocalCoffeeDataSource extends CoffeeDataSource {

  @override
  Future<List<Coffee>> getTrendingCoffee() async {
      await Future.delayed(const Duration(seconds: 2));
      final List<Coffee> newCoffee = dataCoffee.map((e) => CoffeeModel.fromJson(e).toCoffeeEntity()).toList();
      return newCoffee;
  }

}

