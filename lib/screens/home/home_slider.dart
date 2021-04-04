import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class home_slider extends StatelessWidget {
  const home_slider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Carousel(
        dotSize: 4.0,
        dotColor: Colors.white,
        dotSpacing: 15.0,
        indicatorBgPadding: 5,
        dotBgColor: Colors.transparent,
        dotVerticalPadding: 5.0,
        images: [
          Image.asset("assets/images/slider.png"),
          Image.asset("assets/images/slider (2).png"),
          Image.asset("assets/images/slider (3).png"),
          Image.asset("assets/images/slider (4).png"),
        ],
      ),
    );
  }
}