import 'package:flutter/material.dart';
import '../../screens.dart';


class CoffeeShopScreen extends StatelessWidget {

  static const String name = 'coffee_screen';

  const CoffeeShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          AppBarCoffe(),
          ContainerCoffeScreen(),
        ],
      ),
    );
  }
}

