import 'package:flutter/material.dart';

class AppBarCoffe extends StatelessWidget {
  const AppBarCoffe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/images/backgroundcoffee.jpg',
          width: size.width,
          height: size.height * .45,
          fit: BoxFit.cover,
          color:Colors.black26,
          colorBlendMode: BlendMode.colorBurn,
        ),
      ),
      PreferredSize(
          preferredSize: Size.fromHeight(size.height * .3),
          child: const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Text('M'),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFFd3a271),
                    size: 40,
                  )
                ],
              ),
            ),
          )),
    ]);
  }
}
