import 'package:coffee_app_routes/domain/datasources/coffee_marker_datasource.dart';
import 'package:coffee_app_routes/domain/entities/coffeemarker.dart';
import 'package:coffee_app_routes/domain/repositories/coffee_marker_repositorie.dart';

class CoffeeMarkerRepositoryImpl extends CoffeeMarkerRepository {

  final CoffeeMarkerDataSource coffeeMarkerDataSource;

  CoffeeMarkerRepositoryImpl({required this.coffeeMarkerDataSource});

  

  @override
  Future<List<CoffeeMarker>> getTrendingCoffeeMarker() {
    return coffeeMarkerDataSource.getTrendingCoffeeMarker();
  }

}