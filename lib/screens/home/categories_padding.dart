import 'package:flutter/material.dart';
import 'package:utility_shop/screens/home/categories.dart';

class categories_padding extends StatelessWidget {
  const categories_padding({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Categories(icon: "assets/icons/Bell.svg", text: "Ghee", press: null),
            Categories(icon: "assets/icons/Bell.svg", text: "Sugar", press: null),
            Categories(icon: "assets/icons/Bell.svg", text: "Atta", press: null),
            Categories(icon: "assets/icons/Bell.svg", text: "Dalain", press: null),
          ],
        ),
      ),

    );
  }
}
