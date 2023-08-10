
import 'package:coffee_app_routes/domain/entities/coffeemarker.dart';

abstract class CoffeeMarkerDataSource {

  Future<List<CoffeeMarker>> getTrendingCoffeeMarker();
  
}

