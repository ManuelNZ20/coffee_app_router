import 'package:coffee_app_routes/config/helper/text_style/text_style.dart';
import 'package:flutter/material.dart';

class TitleContainerCoffee extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight font;
  const TitleContainerCoffee({super.key,required this.text,required this.fontSize,textColor,fontWeight}):color=textColor??Colors.white,font=fontWeight??FontWeight.w500;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textGoogle(
        fontSize:fontSize,
        color:color,
        fontWeight: font
      ),
    );
  }
}