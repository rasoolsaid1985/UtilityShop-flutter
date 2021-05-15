import 'package:flutter/material.dart';
import 'package:utility_shop/screens/categories_product/pulses.dart';
import 'package:utility_shop/screens/categories_product/rice.dart';
import 'package:utility_shop/screens/home/categories.dart';

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
                    return pulses();
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
            Categories(icon: "assets/icons/Food1.svg", text: "Milk", press: () {}),
            Categories(icon: "assets/icons/biscuit.svg", text: "Biscuits", press: () {}),
          ],
        ),
      ),

    );
  }
}
