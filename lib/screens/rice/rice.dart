//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:utility_shop/cart/cart_screen.dart';
// import 'package:utility_shop/model/productPage.dart';
// import 'package:utility_shop/model/product_page.dart';
// import 'package:utility_shop/provider/dalda_notifier.dart';
// import 'package:utility_shop/screens/rice/productDetail.dart';
// import 'package:utility_shop/screens/rice/productNotifier.dart';
// import 'package:utility_shop/screens/rice/product_api.dart';
// import 'package:utility_shop/utils/dalda_api.dart';
//
//
//
// class Rice extends StatefulWidget {
//
//   @override
//   _RiceState createState() => _RiceState();
// }
//
// class _RiceState extends State<Rice> {
//
//
//   @override
//   void initState() {
//     productNotifier productnotifier = Provider.of<productNotifier>(
//         context, listen: false);
//     getProduct(productnotifier);
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     productNotifier productnotifier = Provider.of<productNotifier>(context);
//     Size size = MediaQuery
//         .of(context)
//         .size;
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: Text('Branded Ghee', style: TextStyle(
//             color: Colors.black
//         ),),
//       ),
//       body:
//         Expanded(
//           child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: productnotifier.productList.length,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (BuildContext context, int index) {
//                         return productDetail(name: productnotifier.productList[index].name,
//                           image: productnotifier.productList[index].image,
//                           weight: productnotifier.productList[index].weight,
//                           amount: productnotifier.productList[index].amount,
//                         );
//           }
//           ),
//         ),
//
//
//
//           );
//
//
//
//   }
// }
//
