// import 'package:flutter/material.dart';
// import 'package:utility_shop/product_model/product.dart';
// import 'package:utility_shop/cart/cart_screen.dart';
// import 'package:utility_shop/model/product_page.dart';
// import 'package:utility_shop/product_model/product.dart';
// import 'package:utility_shop/screens/categories_product/ghee.dart';
// import 'package:utility_shop/utils/auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class oil extends StatefulWidget {
//   const oil({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   _oilState createState() => _oilState();
// }
//
//
// Map map = Map<int, productsInfo>(
//
// );
// class _oilState extends State<oil> {
//   String image1 = "", name1 = "", price1 = "", quantity1= "";
//   int loop = 0;
//   final ProductModel product;
//
//   _oilState(this.product);
//
//
//   retrievingProductsFromFirebase() {
//     FirebaseFirestore.instance.collection('product').doc('ghee').collection('brands').doc('dalda').collection('types').get().then((QuerySnapshot querySnapshot){
//       setState(() {
//
//
//         querySnapshot.docs.forEach((doc) {
//           image1 = (doc["image"]) as String;
//           name1 = (doc["name"]) as String;
//           price1 = (doc["price"]) as String;
//           quantity1 = (doc["quantity"]) as String;
//
//
//           final data = productsInfo(image1, name1, price1, quantity1);
//           map[loop]= data;
//           print("from here");
//           var listAmounts = map.values.toList();
//
//           final productsInfo data2 = listAmounts[0];
//           print(data2.name);
//           loop++;
//
//         }
//         );
//
//
//
//         // for(var i = 0; i< querySnapshot.docs.length; i++) {
//         //   image1 = (querySnapshot.docs[i].data()["j"]);
//         //   name1 = (querySnapshot.data()["name"]);
//         //   price1 = (querySnapshot.data()["price"]);
//         //   quantity1 = (querySnapshot.data()["quantity"])
//         //   final data = productsInfo(image1[i][""], name1, price1, quantity1)
//         //   map[i] =
//         // }
//       });
//
//     });
//   }
//   retrievingfortifiedFromFirebase() {
//     FirebaseFirestore.instance.collection('product').doc('ghee').collection('brands').doc('dalda').collection('types').doc('Dalda Tin').get().then((querySnapshot){
//       setState(() {
//         image1 = (querySnapshot.data()["image"]);
//         name1 = (querySnapshot.data()["name"]);
//         price1 = (querySnapshot.data()["price"]);
//         quantity1 = (querySnapshot.data()["quantity"]);
//
//       });
//
//     });
//   }
//   @override
//   void initState() {
//     super.initState();
//     retrievingProductsFromFirebase();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         title: Text(
//           "Oil", style: TextStyle(
//             color: Colors.black
//         ),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.only(top: 20),
//         child: Container(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text("Dalda Oil",
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold
//                         ),),
//                     ],
//                   ),
//                 ),

//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       // child: ListView.builder(
//                       //     scrollDirection: Axis.horizontal,
//                       //     //itemCount: CategoryProvider.categories.length;,
//                       //     itemBuilder: (context, index) {
//                       //   return  product_page(image: "assets/images/dalda_oil5.jpg", text: CategoryProvider.categories[index].name, price: "Rs. 1415 (5 Ltr)", press: () {},);
//                       // }),
//                       child: Row(
//                           children: [
//                             product_page(image: "assets/images/dalda_oil1.jpg", text: product.name, price: product.amount as String, press: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) {
//                                     return CartPage();
//                                   },
//                                 ),
//                               );
//                             }),
//                             // product_page(image: "assets/images/dalda_oil5.jpg", text: "Fortified Cooking Oil", price: "Rs. 1415 (5 Ltr)", press: () {},),
//                             // product_page(image: "assets/images/dalda_oil_btl.jpg", text: "Dalda Oil", price: "Rs. 1274 (4.5 Ltr)", press: () {},),
//                             // product_page(image: "assets/images/dalda_oil_tin.jpg", text: "Fortified Cooking Oil", price: "Rs. 708 (2.5 Ltr)", press: () {},),
//                           ]
//                       ),
//                     ),
//                     SizedBox(height: 15,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text("Manpasand Oil",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold
//                             ),),
//                         ],
//                       ),
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                           children: [
//                             product_page(image: "assets/images/manpasand_oil1.jpg", text: "Cooking Oil", price: "Rs. 800 (1 Ltr)", press: () {},),
//                             product_page(image: "assets/images/manpasand_oil5.jpg", text: "Manpasand Cooking Oil", price: "Rs. 800 (5 Ltr)", press: () {},),
//                             product_page(image: "assets/images/manpasand_oil_btl2.jpg", text: "Cooking Oil", price: "Rs. 800 (2 Ltr)", press: () {},),
//                             product_page(image: "assets/images/manpasand_oil_btl4.jpg", text: "Cooking Oil", price: "Rs. 800 (4 Ltr)", press: () {},),
//                             product_page(image: "assets/images/manpasand_oil_tin.jpg", text: "Cooking Oil", price: "Rs. 800 (5 Ltr)", press: () {},),
//                           ]
//                       ),
//                     ),
//                     SizedBox(height: 15,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text("Eva Oil",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold
//                             ),),
//                         ],
//                       ),
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                           children: [
//                             product_page(image: "assets/images/eva_oil1.jpg", text: "Eva Cooking Oil", price: "Rs. 260 (1 Ltr)", press: () {},),
//                             product_page(image: "assets/images/eva_oil5.jpg", text: "Cooking Oil", price: "Rs. 1300 (5 Ltr)", press: () {},),
//                             product_page(image: "assets/images/eva_oil_btl5.jpg", text: "Cooking Oil", price: "Rs. 1300 (5 Ltr)", press: () {},),
//                             product_page(image: "assets/images/eva_oil_tin.jpg", text: "Eva Cooking Oil", price: "Rs. 1300 (5 Ltr)", press: () {},),
//                           ]
//                       ),
//                     ),
//                     SizedBox(height: 15,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text("Habib Oil",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold
//                             ),),
//                         ],
//                       ),
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                           children: [
//                             product_page(image: "assets/images/habib_oil1.jpg", text: "Cooking Oil", price: "Rs. 290 (1 Ltr)", press: () {},),
//                             product_page(image: "assets/images/habib_oil5.jpg", text: "Cooking Oil", price: "Rs. 1450 (5 Ltr)", press: () {},),
//                             product_page(image: "assets/images/habib_oil_btl.jpg", text: "Super Habib Oil", price: "Rs. 725 (2.5 Ltr)", press: () {},),
//                             product_page(image: "assets/images/habib_oil_tin.jpg", text: "Cooking Oil", price: "Rs. 1450 (5 Ltr)", press: () {},),
//                           ]
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//
//       ),
//     );
//   }
// }
//
// class productsInfo {
//
//   final String image, name, price, quantity;
//
//   productsInfo(this.image, this.name, this.price, this.quantity);
// }
