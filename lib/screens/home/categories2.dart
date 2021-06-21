import 'package:flutter/material.dart';
import 'package:utility_shop/model/productPage.dart';
import 'package:utility_shop/product/_detail/ghee/daldaGhee.dart';
import 'package:utility_shop/product/_detail/ghee/ghee.dart';
import 'package:utility_shop/product/_detail/pulses/pulses.dart';
import 'package:utility_shop/screens/categories_product/milk.dart';
import 'package:utility_shop/screens/categories_product/pulses.dart';
import 'package:utility_shop/screens/categories_product/rice.dart';
import 'package:utility_shop/screens/home/categories.dart';
import 'package:utility_shop/screens/rice/rice.dart';
import 'package:utility_shop/utils/auth.dart';

class categories2 extends StatelessWidget {
  const categories2({
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
            Categories(icon: "assets/icons/pulses.svg", text: "Pulses", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return pulse();
                  },
                ),
              );
            }),
            Categories(icon: "assets/icons/rice.svg", text: "Rice", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return rice();
                  },
                ),
              );
            }),
            Categories(icon: "assets/icons/Food1.svg", text: "Milk", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return milk();
                  },
                ),
              );
            }),
            Categories(icon: "assets/icons/biscuit.svg", text: "Biscuits", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Ghee();
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
