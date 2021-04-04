import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';
import 'package:utility_shop/screens/home/categories.dart';
import 'package:utility_shop/screens/home/categories2.dart';
import 'package:utility_shop/screens/home/categories3.dart';
import 'package:utility_shop/screens/home/categories_padding.dart';
import 'package:utility_shop/screens/home/home_icon.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:utility_shop/screens/home/home_slider.dart';
import 'package:utility_shop/screens/home/specialForYou.dart';

import '../../constants.dart';
import 'cartIcon.dart';
import 'home_header.dart';

class Home_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 10),
          home_icon(),
          SizedBox(height: 10),
          home_slider(),
          SizedBox(height: 10),
          categories_padding(),
          SizedBox(height: 15),
          categories2(),
          SizedBox(height: 15),
          categories3(),
          SizedBox(height: 10),
          special_for_you(),

        ],
      ),
    );
  }
}












