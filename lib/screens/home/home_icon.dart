import 'package:flutter/material.dart';
import 'package:utility_shop/screens/home/cartIcon.dart';
import 'package:utility_shop/screens/home/home_header.dart';

import '../../constants.dart';

class home_icon extends StatelessWidget {
  const home_icon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          home_header(),
          carticon(
            svgSrc: "assets/icons/Cart Icon.svg",
            noOfItems: 0,
            press: () {},
          ),
          carticon(
            svgSrc: "assets/icons/Bell.svg",
            noOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}