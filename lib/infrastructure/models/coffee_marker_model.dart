
import 'package:coffee_app_routes/domain/entities/coffeemarker.dart';
import 'package:coffee_app_routes/domain/entities/product.dart';

class CoffeeMarkerModel {
  final String name;
  final String caption;
  final double price;
  final double volume;
  final String imgUrl;
  final CategoryProduct categoryProduct;

  CoffeeMarkerModel(
      {required this.name,
      required this.caption,
      this.price = 0,
      required this.volume,
      required this.imgUrl,
      this.categoryProduct = CategoryProduct.coffeeMaker})
      : assert(price >= 0, 'Invalid price');

  factory CoffeeMarkerModel.fromJson(Map<String, dynamic> json) => CoffeeMarkerModel(
      name: json['name'] ?? 'No name',
      caption: json['caption'] ?? 'No caption',
      price: json['price'] ?? 0,
      volume: json['volume'] ?? 0,
      imgUrl: json['imgUrl'],
      categoryProduct: CategoryProduct.coffeeMaker
      );

  CoffeeMarker toCoffeeEntity() => CoffeeMarker(
      name: name,
      caption: caption,
      price: price,
      volume: volume,
      imgUrl: imgUrl,
      categoryProduct: categoryProduct
      );
}
