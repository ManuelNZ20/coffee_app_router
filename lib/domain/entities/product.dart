enum CategoryProduct{
  coffee,coffeeMaker
}

abstract class Product {
  final String name;
  final String caption;
  final double price;
  final double volume;
  final String imgUrl;
  final CategoryProduct categoryProduct;

  Product({required this.name, required this.caption, required this.price, required this.volume, required this.imgUrl,required this.categoryProduct});
}
