import 'package:flutter/material.dart';
import 'package:utility_shop/screens/categories_product/Oil.dart';
import 'package:utility_shop/screens/categories_product/flour.dart';
import 'package:utility_shop/screens/categories_product/ghee.dart';
import 'package:utility_shop/screens/categories_product/sugar_product.dart';
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
            Categories(icon: "assets/icons/ghee.svg", text: "Ghee", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ghee();
                  },
                ),
              );
            },),
            Categories(icon: "assets/icons/flour.svg", text: "Flour", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return flour();
                  },
                ),
              );
            }),
            Categories(icon: "assets/icons/sugar.svg", text: "Sugar", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return sugar_product();
                  },
                ),
              );
            }),
            Categories(icon: "assets/icons/oil.svg", text: "Oil", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return oil();
                  },
                ),
              );
            }),
          ],
        ),
      ),

    );
  }
}
