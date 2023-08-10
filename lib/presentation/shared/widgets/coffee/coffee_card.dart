import 'package:coffee_app_routes/domain/entities/coffee.dart';
import 'package:coffee_app_routes/domain/entities/coffeemarker.dart';
import 'package:coffee_app_routes/domain/entities/product.dart';
import 'package:coffee_app_routes/presentation/providers/favorite_product_provider.dart';
import 'package:coffee_app_routes/presentation/screens.dart';
import 'package:coffee_app_routes/presentation/shared/widgets/title_container_coffee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardProduct extends StatelessWidget {
  const CardProduct(
      {super.key,
      required this.name,
      required this.caption,
      required this.price,
      required this.volume,
      required this.imgUrl,
      required this.categoryProduct});

  final String name;
  final String caption;
  final double price;
  final double volume;
  final String imgUrl;
  final CategoryProduct categoryProduct;

  @override
  Widget build(BuildContext context) {
    // final bool isFavoriteProduct = ref.watch(isFavorite);
    final coffeeState = context.watch<MyAppState>();
    Icon icon;
    if (coffeeState.favorites.contains(name)) {
      icon = const Icon(
        CupertinoIcons.heart_fill,
        size: 30,
        color: Colors.red,
      );
    } else {
      icon =
          const Icon(CupertinoIcons.suit_heart, size: 30, color: Colors.white);
    }
    const decoration = BoxDecoration(color: Color(0xFFce9760));
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          if (categoryProduct == CategoryProduct.coffee) {
            return DetailsProductScreen(
                product: Coffee(
                    name: name,
                    caption: caption,
                    price: price,
                    volume: volume,
                    imgUrl: imgUrl,
                    categoryProduct: categoryProduct));
          }
          return DetailsProductScreen(
              product: CoffeeMarker(
                  name: name,
                  caption: caption,
                  price: price,
                  volume: volume,
                  imgUrl: imgUrl,
                  categoryProduct: categoryProduct));
        }));
      },
      child: SizedBox(
        width: 235,
        child: Card(
          color: decoration.color,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 235,
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0
                        ),
                        child: Image.asset(
                          imgUrl,
                          width: 180,
                          height: categoryProduct==CategoryProduct.coffee?100:170,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10.0,
                        right: 5.0,
                        child: IconButton(
                          onPressed: () {
                            coffeeState.toggleFavorite(name);
                          },
                          icon: icon,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TitleContainerCoffee(
                          text: name,
                          fontSize: 20,
                        ),
                        TitleContainerCoffee(
                          text: '\$${price.toInt()}',
                          fontSize: 20,
                          textColor: const Color(0xFF342308),
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      child: Text(
                        caption,
                        // softWrap: false,
                        overflow: TextOverflow.clip,
                        textHeightBehavior: const TextHeightBehavior(
                            applyHeightToFirstAscent: true),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
