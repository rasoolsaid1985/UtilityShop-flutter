import 'package:flutter/material.dart';

import '../../constants.dart';
import 'cartIcon.dart';

class home_header extends StatelessWidget {
  const home_header({
    Key key, this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 50,
      decoration: BoxDecoration(
          color: login_textField,
          borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        onChanged: (value) {

        },
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search here",
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 9)
        ),
      ),
    );
  }
}