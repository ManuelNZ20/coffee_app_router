import 'package:coffee_app_routes/domain/datasources/coffee_marker_datasource.dart';
import 'package:coffee_app_routes/domain/entities/coffeemarker.dart';
import 'package:coffee_app_routes/infrastructure/models/coffee_marker_model.dart';
import 'package:coffee_app_routes/presentation/shared/data/coffee_marker.dart';

class LocalCoffeeMarkerDataSource extends CoffeeMarkerDataSource {

  @override
  Future<List<CoffeeMarker>> getTrendingCoffeeMarker() async{
    await Future.delayed(const Duration(seconds: 2));
    final List<CoffeeMarker> newList = dataCoffeeMarker.map((e) => CoffeeMarkerModel.fromJson(e).toCoffeeEntity()).toList();
    return newList;
  }

}