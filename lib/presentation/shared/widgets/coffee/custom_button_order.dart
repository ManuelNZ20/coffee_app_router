import 'package:flutter/material.dart';
import '../title_container_coffee.dart';

class CustomOrderButton extends StatelessWidget {
  const CustomOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

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
              onPressed: () {},
              icon: Icon(
                Icons.remove_rounded,
                color: colors.primary,
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TitleContainerCoffee(
              text: '1',
              fontSize: 24,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_rounded,
                color: colors.primary,
              )),
        ],
      ),
    );
  }
}