
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/cart/cart_screen.dart';
import 'package:utility_shop/model/productPage.dart';
import 'package:utility_shop/model/product_page.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';
import 'package:utility_shop/utils/dalda_api.dart';



class milk extends StatefulWidget {

  @override
  _milkState createState() => _milkState();
}

class _milkState extends State<milk> {


  @override
  void initState() {
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(
        context, listen: false);
    getDalda(daldanotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context);
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Branded Ghee', style: TextStyle(
              color: Colors.black
          ),),
        ),
        body:
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Eva Oil",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                  productPage(),
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
                  productPage(),
                ],
              )
            ),

    );
  }
}


//         LayoutBuilder(
//             builder: (BuildContext context, BoxConstraints constraints) {
//               return Text('Hi');
//
//                       // productPage();
//
//
//
//
//               //             ),Padding(
//               //
//               //       padding: EdgeInsets.only(top: 20),
//               //       child: Container(
//               //         child: SingleChildScrollView(
//               //           child: Column(
//               //               children: [
//               //                 Padding(
//               //                   padding: const EdgeInsets.only(left: 10),
//               //                   child: Row(
//               //                     mainAxisAlignment: MainAxisAlignment.start,
//               //                     children: [
//               //                       Text("Dalda Oil",
//               //                         style: TextStyle(
//               //                             fontSize: 20,
//               //                             fontWeight: FontWeight.bold
//               //                         ),),
//               //                     ],
//               //                   ),
//               //                 ),
//               //                       Column(
//               //                           children: [
//               //                            productPage(),
//               //                           ]
//               //                       ),
//               //                     //   SingleChildScrollView(
//               //                     //     scrollDirection: Axis.horizontal,
//               //                     //     // child: ListView.builder(
//               //                     //     //     scrollDirection: Axis.horizontal,
//               //                     //     //     //itemCount: CategoryProvider.categories.length;,
//               //                     //     //     itemBuilder: (context, index) {
//               //                     //     //   return  product_page(image: "assets/images/dalda_oil5.jpg", text: CategoryProvider.categories[index].name, price: "Rs. 1415 (5 Ltr)", press: () {},);
//               //                     //     // }),
//               //                     //     child:  ListView.builder(
//               //                     //       shrinkWrap: true,
//               //                     //             scrollDirection: Axis.horizontal,
//               //                     //             itemCount: 4,
//               //                     //             itemBuilder: (_, index) {
//               //                     //               print(product.name);
//               //                     //               return product_page(image: "assets/images/dalda_oil_tin.jpg", text: "Fortified Cooking Oil", price: "Rs. 708 (2.5 Ltr)", press: () {},);
//               //                     //             }))
//               //                     // // [
//               //                     //           // product_page(image: "assets/images/dalda_oil1.jpg", text: product.name, price: product.amount as String, press: () {
//               //                     //           //   Navigator.push(
//               //                     //           //     context,
//               //                     //           //     MaterialPageRoute(
//               //                     //           //       builder: (context) {
//               //                     //           //         return CartPage();
//               //                     //           //       },
//               //                     //           //     ),
//               //                     //           //   );
//               //                     //           // }),
//               //                     //           // product_page(image: "assets/images/dalda_oil5.jpg", text: "Fortified Cooking Oil", price: "Rs. 1415 (5 Ltr)", press: () {},),
//               //                     //           // product_page(image: "assets/images/dalda_oil_btl.jpg", text: "Dalda Oil", price: "Rs. 1274 (4.5 Ltr)", press: () {},),
//               //                     //           // product_page(image: "assets/images/dalda_oil_tin.jpg", text: "Fortified Cooking Oil", price: "Rs. 708 (2.5 Ltr)", press: () {},),
//               //                     //         ]
//               //                     //     ),
//               //                    //  SizedBox(height: 15,),
//               //                    //  Padding(
//               //                    //    padding: const EdgeInsets.only(left: 10),
//               //                    //    child: Row(
//               //                    //      mainAxisAlignment: MainAxisAlignment.start,
//               //                    //      children: [
//               //                    //        Text("Manpasand Oil",
//               //                    //          style: TextStyle(
//               //                    //              fontSize: 20,
//               //                    //              fontWeight: FontWeight.bold
//               //                    //          ),),
//               //                    //      ],
//               //                    //    ),
//               //                    //  ),
//               //                    // Row(
//               //                    //        children: [
//               //                    //         productPage(),
//               //                    //        ]
//               //                    //    ),
//               //                    //
//               //                    //  SizedBox(height: 15,),
//               //                    //  Padding(
//               //                    //    padding: const EdgeInsets.only(left: 10),
//               //                    //    child: Row(
//               //                    //      mainAxisAlignment: MainAxisAlignment.start,
//               //                    //      children: [
//               //                    //        Text("Eva Oil",
//               //                    //          style: TextStyle(
//               //                    //              fontSize: 20,
//               //                    //              fontWeight: FontWeight.bold
//               //                    //          ),),
//               //                    //      ],
//               //                    //    ),
//               //                    //  ),
//               //                    //  Row(
//               //                    //        children: [
//               //                    //          productPage(),
//               //                    //        ]
//               //                    //    ),
//               //                    //
//               //                    //  SizedBox(height: 15,),
//               //                    //  Padding(
//               //                    //    padding: const EdgeInsets.only(left: 10),
//               //                    //    child: Row(
//               //                    //      mainAxisAlignment: MainAxisAlignment.start,
//               //                    //      children: [
//               //                    //        Text("Habib Oil",
//               //                    //          style: TextStyle(
//               //                    //              fontSize: 20,
//               //                    //              fontWeight: FontWeight.bold
//               //                    //          ),),
//               //                    //      ],
//               //                    //    ),
//               //                    //  ),
//               //                    //  Row(
//               //                    //        children: [
//               //                    //          productPage()
//               //                    //        ]
//               //                    //    ),
//               //                   ],
//               //                 ),
//               //
//               //
//               //           ),
//               //         ),
//               //       ),
//               //   );
//               // }
//
//
//
//
//     //     LayoutBuilder(
//     //         builder: (BuildContext context, BoxConstraints constraints) {
//     //       return Scaffold(
//     //         body: productPage(),
//     //       );
//     //     }),
//     //   ],
//     // );
//
//
// },
//
//   // createCartList() {
//   //   daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context);
//   //   Size size = MediaQuery.of(context).size;
//   //
//   //   ListView.builder(
//   //       // shrinkWrap: true,
//   //       itemCount: daldanotifier.daldaList.length,
//   //       scrollDirection: Axis.horizontal,
//   //       itemBuilder: (BuildContext context, int index)
//   //   {
//   //     return Row(
//   //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //         crossAxisAlignment: CrossAxisAlignment.start,
//   //         children: [
//   //           Container(
//   //             height: 250,
//   //             padding: EdgeInsets.only(left: 4, top: 8),
//   //             margin: EdgeInsets.only(left: 10),
//   //             decoration: BoxDecoration(
//   //               borderRadius: BorderRadius.circular(20),
//   //               border: Border.all(color: Colors.grey),
//   //             ),
//   //             child: Column(
//   //               crossAxisAlignment: CrossAxisAlignment.start,
//   //               children: [
//   //                 Image.network(daldanotifier.daldaList[index].image,
//   //                     height: size.height * 0.20),
//   //                 //SizedBox(height: 15,),
//   //
//   //                 Text(daldanotifier.daldaList[index].name, style: TextStyle(
//   //                   fontWeight: FontWeight.bold,
//   //                   fontSize: 16,
//   //                 ),
//   //                   textAlign: TextAlign.left,),
//   //                 //SizedBox(height: 10,),
//   //                 Row(
//   //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                   children: [
//   //                     Text(
//   //                       "Rs. " + daldanotifier.daldaList[index].amount + " (" +
//   //                           daldanotifier.daldaList[index].weight + ")",
//   //                       style: TextStyle(
//   //                         fontWeight: FontWeight.bold,
//   //                       ),
//   //                       textAlign: TextAlign.left,),
//   //                     Padding(
//   //                       padding: const EdgeInsets.only(left: 18.0),
//   //                       child: IconButton(
//   //                           icon: Icon(Icons.add_shopping_cart),
//   //                           onPressed: () {
//   //                             daldanotifier.currentDalda =
//   //                             aldanotifier.daldaList[index];
//   //                             Navigator.of(context).push(
//   //                                 MaterialPageRoute(
//   //                                     builder: (BuildContext context) {
//   //                                       return CartPage();
//   //                                     })
//   //                             );
//   //                           }),
//   //                     )
//   //                   ],
//   //                 )
//   //
//   //               ],
//   //             ),
//   //           ),
//   //         ]
//   //     );
//   //   }
//   //   );
//   //
//   // }
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//               children: [
//                 product_page(image: "assets/images/habib_oil1.jpg", text: "Cooking Oil", price: "Rs. 290 (1 Ltr)", press: () {},),
//                 product_page(image: "assets/images/habib_oil5.jpg", text: "Cooking Oil", price: "Rs. 1450 (5 Ltr)", press: () {},),
//                 product_page(image: "assets/images/habib_oil_btl.jpg", text: "Super Habib Oil", price: "Rs. 725 (2.5 Ltr)", press: () {},),
//                 product_page(image: "assets/images/habib_oil_tin.jpg", text: "Cooking Oil", price: "Rs. 1450 (5 Ltr)", press: () {},),
//               ]
//           ),
//         ),
//         // Column(
//         //   children: [
//         //     productPage(),
//         //   ],
//         // )
//     ]
//
//
//     ),
//     );
// }
// }
