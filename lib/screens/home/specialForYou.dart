import 'package:flutter/material.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';
import 'package:utility_shop/screens/home/home_slider.dart';

class special_for_you extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Popular Products',
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey),
          ),
        ),
        home_slider(),
      ],
    );
  }
}
