import 'package:coffee_app_routes/presentation/providers/counter_order_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../title_container_coffee.dart';

class CustomOrderButton extends StatelessWidget {
  const CustomOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final counterOrderProvider = context.watch<CounterOrderProvider>();
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colors.primary,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                counterOrderProvider.removeOrderProduct();
              },
              icon: Icon(
                Icons.remove_rounded,
                color: colors.primary,
              )),
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: TitleContainerCoffee(
                text: '${counterOrderProvider.counter}',
                fontSize: 24,
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                counterOrderProvider.addOrderProduct();
              },
              icon: Icon(
                Icons.add_rounded,
                color: colors.primary,
              )),
        ],
      ),
    );
  }
}
