import 'package:coffee_app_routes/domain/entities/coffee.dart';
import 'package:coffee_app_routes/domain/entities/product.dart';

class CoffeeModel {
  final String name;
  final String caption;
  final double price;
  final double volume;
  final String imgUrl;
  final CategoryProduct categoryProduct;

  CoffeeModel(
      {required this.name,
      required this.caption,
      this.price = 0,
      required this.volume,
      required this.imgUrl,
      this.categoryProduct = CategoryProduct.coffee})
      : assert(price >= 0, 'Invalid price');

  factory CoffeeModel.fromJson(Map<String, dynamic> json) => CoffeeModel(
      name: json['name'] ?? 'No name',
      caption: json['caption'] ?? 'No caption',
      price: json['price'] ?? 0.0,
      volume: json['volume'] ?? 0.0,
      imgUrl: json['imgUrl'],
      categoryProduct: CategoryProduct.coffee
      );

  Coffee toCoffeeEntity() => Coffee(
      name: name,
      caption: caption,
      price: price,
      volume: volume,
      imgUrl: imgUrl,
      categoryProduct: categoryProduct
      );
}
