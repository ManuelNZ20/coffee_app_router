import 'package:coffee_app_routes/domain/entities/product.dart';
import 'package:coffee_app_routes/presentation/shared/widgets/coffee/coffee_card.dart';
import 'package:coffee_app_routes/presentation/shared/widgets/title_container_coffee.dart';
import 'package:flutter/material.dart';

class ContainerCategoryProduct extends StatelessWidget {
  const ContainerCategoryProduct(
      {super.key,
      required this.product,
      required this.title});
  final String title;
  final List<Product> product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleContainerCoffee(
            text: title,
            fontSize: 24,
          ),
          SizedBox(
            height: size.height * .4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:product.length,
              itemBuilder: (context, index) {
                final Product coffeeEntity = product[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //todo: agregar enum para identificar el tipo de clase a la entidad
                    CardProduct(
                      name: coffeeEntity.name,
                      caption: coffeeEntity.caption,
                      price: coffeeEntity.price,
                      volume: coffeeEntity.volume,
                      imgUrl: coffeeEntity.imgUrl,
                      categoryProduct: coffeeEntity.categoryProduct,
                    ),
                    const SizedBox(
                      width: 25,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
