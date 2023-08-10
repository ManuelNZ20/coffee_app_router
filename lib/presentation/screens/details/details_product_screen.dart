import 'package:coffee_app_routes/config/helper/functions/compare_category.dart';
import 'package:coffee_app_routes/domain/entities/product.dart';
import 'package:coffee_app_routes/presentation/shared/widgets/title_container_coffee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
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
      backgroundColor: const Color.fromARGB(255, 71, 49, 27).withAlpha(255),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            margin: EdgeInsets.only(
                top: size.height * .43,
                left: size.width * .04,
                right: size.width * .04),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleContainerCoffee(
                        text: categoryCompare(product.categoryProduct),
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TitleContainerCoffee(
                        text: product.name,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomOrderButton(),
                      TitleContainerCoffee(
                        fontSize: 26,
                        text: '\$${product.price}',
                        fontWeight: FontWeight.w100,
                        textColor: colors.primary,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    product.caption,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 203, 144, 86),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Volume: ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 203, 144, 86),
                        ),
                      ),
                      TitleContainerCoffee(
                        text: '${product.volume}',
                        fontSize: 24,
                        textColor: colors.primary,
                      ),
                      TitleContainerCoffee(
                        text: 'oz',
                        fontSize: 24,
                        textColor: colors.primary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: _AppBarImage(
              imgUrl: product.imgUrl,
              categoryProduct: product.categoryProduct,
            ),
          ),
          Positioned(
            bottom: 0,
            child: InkWell(
              onTap: () {
              },
              child: Material(
                color: const Color.fromARGB(255, 203, 144, 86),
                child: SizedBox(
                  width: size.width,
                  height: size.height * .082,
                  child: Center(
                      child: TitleContainerCoffee(
                          text: 'Order Now',
                          fontSize: 28,
                          textColor:
                              const Color.fromARGB(255, 71, 49, 27).withAlpha(255))),
                ),
              ),
            ),
          )
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
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
        width: size.width,
        height: size.height * .45,
        // decoration: const BoxDecoration(),
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
                  height: size.height * .25,
                  fit: categoryProduct == CategoryProduct.coffee
                      ? BoxFit.scaleDown
                      : BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 30,
              child: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(
                    MaterialCommunityIcons.arrow_left,
                    size: 34,
                    color: Theme.of(context).colorScheme.primary,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
