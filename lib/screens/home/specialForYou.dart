import 'package:flutter/material.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';

class special_for_you extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      child: Text(
        'Popular Products',
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20),
      )
    );
  }
}
