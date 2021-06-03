import 'package:flutter/material.dart';
import 'package:utility_shop/model/productPage.dart';
import 'package:utility_shop/product/_detail/flour/flour.dart';
import 'package:utility_shop/product/_detail/ghee/ghee.dart';
import 'package:utility_shop/product/_detail/oil/oil.dart';
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
            Categories(icon: "assets/icons/ketchup.svg", text: "Ketchup", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Ghee();
                  },
                ),
              );
            }),
            Categories(icon: "assets/icons/beverages.svg", text: "Drinks", press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Flour();
                  },
                ),
              );
            }),
            Categories(icon: "assets/icons/detergants.svg", text: "Tea", press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Oil();
                  },
                ),
              );
            }),
            Categories(icon: "assets/icons/other.svg", text: "Others", press: (){}),
          ],
        ),
      ),

    );
  }
}
