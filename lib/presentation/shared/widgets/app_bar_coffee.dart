import 'package:flutter/material.dart';

class AppBarCoffee extends StatelessWidget {
  const AppBarCoffee({
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
          height: size.height * .4,
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
      // Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Container(
      //     decoration: BoxDecoration(
      //         color: Color(0xFF543a20),
      //         borderRadius: BorderRadius.only(
      //           topRight: Radius.circular(50),
      //           topLeft: Radius.circular(50),
      //         )),
      //     height: size.height * .75,
      //   ),
      // ),
    ]);
  }
}
