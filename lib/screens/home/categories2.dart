import 'package:flutter/material.dart';
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
            Categories(icon: "assets/icons/laptop.svg", text: "Laptop", press: () {}),
            Categories(icon: "assets/icons/sports.svg", text: "Sports", press: () {}),
            Categories(icon: "assets/icons/car.svg", text: "Car", press: () {}),
            Categories(icon: "assets/icons/bike.svg", text: "Bike", press: () {}),
          ],
        ),
      ),

    );
  }
}
