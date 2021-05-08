import 'package:flutter/material.dart';
import 'package:utility_shop/screens/home/categories.dart';

class categories3 extends StatelessWidget {
  const categories3({
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
            Categories(icon: "assets/icons/assecories.svg", text: "Acces", press: () {}),
            Categories(icon: "assets/icons/beverages.svg", text: "Drinks", press: (){}),
            Categories(icon: "assets/icons/detergants.svg", text: "", press: (){}),
            Categories(icon: "assets/icons/other.svg", text: "Others", press: (){}),
          ],
        ),
      ),

    );
  }
}
