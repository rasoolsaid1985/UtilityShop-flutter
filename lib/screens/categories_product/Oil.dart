import 'package:flutter/material.dart';
import 'package:utility_shop/cart/cart_screen.dart';
import 'package:utility_shop/model/product_page.dart';
import 'package:utility_shop/product_model/product.dart';
import 'package:utility_shop/provider/product.dart';
import 'package:utility_shop/screens/categories_product/ghee.dart';
import 'package:utility_shop/utils/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Oil extends StatelessWidget {
  // final ProductModel product;
  //
  //
  // const Oil({Key key, this.product}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Oil", style: TextStyle(
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
                      Text("Dalda Oil",
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
                            product_page(image: "assets/images/dalda_oil1.jpg", text: "Cooking Oil", price: "Rs. 283 (1 Ltr)", press: () {},),
                            product_page(image: "assets/images/dalda_oil5.jpg", text: "Fortified Cooking Oil", price: "Rs. 1415 (5 Ltr)", press: () {},),
                            product_page(image: "assets/images/dalda_oil_btl.jpg", text: "Dalda Oil", price: "Rs. 1274 (4.5 Ltr)", press: () {},),
                            product_page(image: "assets/images/dalda_oil_tin.jpg", text: "Fortified Cooking Oil", price: "Rs. 708 (2.5 Ltr)", press: () {},),
                          ]
                      ),
                    ),
                  //   SingleChildScrollView(
                  //     scrollDirection: Axis.horizontal,
                  //     // child: ListView.builder(
                  //     //     scrollDirection: Axis.horizontal,
                  //     //     //itemCount: CategoryProvider.categories.length;,
                  //     //     itemBuilder: (context, index) {
                  //     //   return  product_page(image: "assets/images/dalda_oil5.jpg", text: CategoryProvider.categories[index].name, price: "Rs. 1415 (5 Ltr)", press: () {},);
                  //     // }),
                  //     child:  ListView.builder(
                  //       shrinkWrap: true,
                  //             scrollDirection: Axis.horizontal,
                  //             itemCount: 4,
                  //             itemBuilder: (_, index) {
                  //               print(product.name);
                  //               return product_page(image: "assets/images/dalda_oil_tin.jpg", text: "Fortified Cooking Oil", price: "Rs. 708 (2.5 Ltr)", press: () {},);
                  //             }))
                  // // [
                  //           // product_page(image: "assets/images/dalda_oil1.jpg", text: product.name, price: product.amount as String, press: () {
                  //           //   Navigator.push(
                  //           //     context,
                  //           //     MaterialPageRoute(
                  //           //       builder: (context) {
                  //           //         return CartPage();
                  //           //       },
                  //           //     ),
                  //           //   );
                  //           // }),
                  //           // product_page(image: "assets/images/dalda_oil5.jpg", text: "Fortified Cooking Oil", price: "Rs. 1415 (5 Ltr)", press: () {},),
                  //           // product_page(image: "assets/images/dalda_oil_btl.jpg", text: "Dalda Oil", price: "Rs. 1274 (4.5 Ltr)", press: () {},),
                  //           // product_page(image: "assets/images/dalda_oil_tin.jpg", text: "Fortified Cooking Oil", price: "Rs. 708 (2.5 Ltr)", press: () {},),
                  //         ]
                  //     ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Manpasand Oil",
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
                            product_page(image: "assets/images/manpasand_oil1.jpg", text: "Cooking Oil", price: "Rs. 270 (1 Ltr)", press: () {},),
                            product_page(image: "assets/images/manpasand_oil5.jpg", text: "Manpasand Cooking Oil", price: "Rs. 1350 (5 Ltr)", press: () {},),
                            product_page(image: "assets/images/manpasand_oil_btl2.jpg", text: "Cooking Oil", price: "Rs. 540 (2 Ltr)", press: () {},),
                            product_page(image: "assets/images/manpasand_oil_btl4.jpg", text: "Cooking Oil", price: "Rs. 1080 (4 Ltr)", press: () {},),
                            product_page(image: "assets/images/manpasand_oil_tin.jpg", text: "Cooking Oil", price: "Rs. 1350 (5 Ltr)", press: () {},),
                          ]
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Eva Oil",
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
                            product_page(image: "assets/images/eva_oil1.jpg", text: "Eva Cooking Oil", price: "Rs. 260 (1 Ltr)", press: () {},),
                            product_page(image: "assets/images/eva_oil5.jpg", text: "Cooking Oil", price: "Rs. 1300 (5 Ltr)", press: () {},),
                            product_page(image: "assets/images/eva_oil_btl5.jpg", text: "Cooking Oil", price: "Rs. 1300 (5 Ltr)", press: () {},),
                            product_page(image: "assets/images/eva_oil_tin.jpg", text: "Eva Cooking Oil", price: "Rs. 1300 (5 Ltr)", press: () {},),
                          ]
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Habib Oil",
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
                            product_page(image: "assets/images/habib_oil1.jpg", text: "Cooking Oil", price: "Rs. 290 (1 Ltr)", press: () {},),
                            product_page(image: "assets/images/habib_oil5.jpg", text: "Cooking Oil", price: "Rs. 1450 (5 Ltr)", press: () {},),
                            product_page(image: "assets/images/habib_oil_btl.jpg", text: "Super Habib Oil", price: "Rs. 725 (2.5 Ltr)", press: () {},),
                            product_page(image: "assets/images/habib_oil_tin.jpg", text: "Cooking Oil", price: "Rs. 1450 (5 Ltr)", press: () {},),
                          ]
                      ),
                    ),
                  ],
                ),
]
            ),
          ),
        ),
    )
      );

  }
}