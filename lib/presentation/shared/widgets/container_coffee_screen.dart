import 'package:coffee_app_routes/presentation/providers/coffee_marker_provider.dart';
import 'package:coffee_app_routes/presentation/providers/coffee_provider.dart';
import 'package:coffee_app_routes/presentation/shared/widgets/product_category_coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContainerCoffeScreen extends StatelessWidget {
  const ContainerCoffeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final coffeeProvider = context.watch<CoffeeProvider>();
    final coffeeMarkerProvider = context.watch<CoffeeMarkerProvider>();
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        clipBehavior: Clip.hardEdge,
          width: size.width,
          height: size.height * .74,
          decoration: const BoxDecoration(
              color: Color(0xFF543a20),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70), topRight: Radius.circular(70))),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 2.0,top: 20,right: 2
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ContainerCategoryProduct(
                    title:'Espersso',
                    product: coffeeMarkerProvider.coffeeMarker,
                  ),
                  ContainerCategoryProduct(
                    title:'Brewing Coffee',
                    product: coffeeProvider.coffee,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
