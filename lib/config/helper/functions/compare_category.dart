
import 'package:coffee_app_routes/domain/entities/product.dart';

String categoryCompare(CategoryProduct categoryProduct) {
  if(categoryProduct==CategoryProduct.coffee) {
    return 'Espersso';
  }
  return 'Brewing Coffe';
}