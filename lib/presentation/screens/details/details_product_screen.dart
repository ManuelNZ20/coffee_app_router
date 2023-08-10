import 'package:coffee_app_routes/config/helper/functions/compare_category.dart';
import 'package:coffee_app_routes/domain/entities/product.dart';
import 'package:coffee_app_routes/presentation/shared/widgets/title_container_coffee.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/coffee/custom_button_order.dart';

class DetailsProductScreen extends StatelessWidget {
  static const String name = 'details_product_screen';
  final Product product;
  const DetailsProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 49, 27).withAlpha(255)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleContainerCoffee(
                      text: categoryCompare(product.categoryProduct),
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                    TitleContainerCoffee(
                      text: product.name,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const CustomOrderButton(),
              ],
            ),
          ),
          _AppBarImage(
            imgUrl: product.imgUrl,
            categoryProduct: product.categoryProduct,
          ),
        ],
      ),
    );
  }
}



class _AppBarImage extends StatelessWidget {
  final String imgUrl;
  final CategoryProduct categoryProduct;
  const _AppBarImage(
      {super.key, required this.imgUrl, required this.categoryProduct});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.hardEdge,
      width: size.width,
      height: size.height * .5,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/fondomesa.jpg',
            width: size.width,
            height: size.height * .5,
            fit: BoxFit.fitHeight,
          ),
          Align(
            // left: ,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              //todo: definir tamaño unico para todas las imagenes
              child: Image.asset(
                imgUrl,
                width: size.width * .6,
                height: size.height * .3,
                fit: categoryProduct == CategoryProduct.coffee
                    ? BoxFit.scaleDown
                    : BoxFit.fitHeight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
