import 'package:coffee_app_routes/domain/entities/coffeemarker.dart';

abstract class CoffeeMarkerRepository { 
  Future<List<CoffeeMarker>> getTrendingCoffeeMarker();
}