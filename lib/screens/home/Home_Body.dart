import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';
import 'package:utility_shop/screens/home/home_icon.dart';

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
          home_icon()
        ],
      ),
    );
  }
}






