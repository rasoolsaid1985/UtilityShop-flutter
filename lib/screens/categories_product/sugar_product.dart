import 'package:flutter/material.dart';
import 'package:utility_shop/model/product_page.dart';
import 'package:utility_shop/screens/categories_product/ghee.dart';



class sugar_product extends StatelessWidget {
  const sugar_product({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Sugar", style: TextStyle(
            color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Sugar",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
              ),
            Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                    product_page(image: "assets/images/sugar.jpg", text: "Sugar", price: "Rs. 136 (2 KG)", press: () {},),
                      ]
        ),
                  ],
                ),
            ],
          ),
        ),

      ),
    );
  }
}
