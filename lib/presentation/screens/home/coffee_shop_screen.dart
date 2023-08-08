import 'package:flutter/material.dart';

import '../../shared/widgets/app_bar_coffee.dart';

class CoffeeShopScreen extends StatelessWidget {

  static const String name = 'coffee_screen';

  const CoffeeShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    AppBarCoffee()
      ],
    );
  }
}
