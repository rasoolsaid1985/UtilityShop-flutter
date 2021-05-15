import 'package:flutter/material.dart';
import 'package:utility_shop/model/product_page.dart';
import 'package:utility_shop/screens/categories_product/ghee.dart';



class rice extends StatelessWidget {
  const rice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Rice", style: TextStyle(
            color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Rice",
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                            product_page(image: "assets/images/tota rice.jpg", text: "Tota Rice", price: "Rs. 283 (1 KG)", press: () {},),
                            product_page(image: "assets/images/dal masoor.jpg", text: "Dal Masoor", price: "Rs. 300 (1 KG)", press: () {},),
                            product_page(image: "assets/images/maash washed.jpg", text: "Dal Maash Washed", price: "Rs. 274 (1 KG)", press: () {},),
                            product_page(image: "assets/images/moong washed.jpg", text: "Moong Washed", price: "Rs. 228 (1 KG)", press: () {},),
                          ]
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Channa",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                            product_page(image: "assets/images/white channa.jpg", text: "White Channa", price: "Rs. 250 (1 KG)", press: () {},),
                            product_page(image: "assets/images/black channa.jpg", text: "Black Channa", price: "Rs. 280 (1 KG)", press: () {},),
                            product_page(image: "assets/images/dal channa.jpg", text: "Dal Channa", price: "Rs. 265 (1 KG)", press: () {},),
                          ]
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Lobia / Beans",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                            product_page(image: "assets/images/white lobia.jpg", text: "White Lobia", price: "Rs. 260 (1 KG)", press: () {},),
                            product_page(image: "assets/images/red lobia.jpg", text: "Cooking Oil", price: "Rs. 255 (1 KG)", press: () {},),
                          ]
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
