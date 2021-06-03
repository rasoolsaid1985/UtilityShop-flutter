import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/product/_detail/test.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';
import 'package:utility_shop/utils/dalda_api.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/cart/cart_screen.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';
import 'package:utility_shop/utils/dalda_api.dart';
class productPage extends StatefulWidget {
  @override
  _productPageState createState() => _productPageState();
}
class _productPageState extends State<productPage> {
  @override
  void initState() {
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context, listen: false);
    getDalda(daldanotifier);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context);
    Size size = MediaQuery.of(context).size;
    return
           Container(
            child:
            Flexible(
              child: ListView.builder(
                // shrinkWrap: true,
                  itemCount: daldanotifier.daldaList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GheeRow(ImgURL :daldanotifier.daldaList[index].image, nameText: daldanotifier.daldaList[index].name,amountText: daldanotifier.daldaList[index].amount,weight: daldanotifier.daldaList[index].weight,);
                  }

              // new ListView.builder(itemBuilder: itemBuilder)
              // ListView.builder(
              //   // shrinkWrap: true,
              //     itemCount: daldanotifier.daldaList.length,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children:   [
              //             Container(
              //               height: 250,
              //               padding: EdgeInsets.only(left: 4, top: 8),
              //               margin: EdgeInsets.only(left: 10),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(20),
              //                 border: Border.all(color: Colors.grey),
              //               ),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Image.network(daldanotifier.daldaList[index].image,
              //                       height: size.height*0.20),
              //                   //SizedBox(height: 15,),
              //


              //                   Text(daldanotifier.daldaList[index].name,style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 16,
              //                   ),
              //                     textAlign: TextAlign.left,),
              //                   //SizedBox(height: 10,),
              //                   Row(
              //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Text("Rs. " + daldanotifier.daldaList[index].amount + " (" + daldanotifier.daldaList[index].weight+ ")",
              //                         style: TextStyle(
              //                           fontWeight: FontWeight.bold,
              //                         ),
              //                         textAlign: TextAlign.left,),
              //                       Padding(
              //                         padding: const EdgeInsets.only(left: 18.0),
              //                         child: IconButton(
              //                             icon: Icon(Icons.add_shopping_cart),
              //                             onPressed: () {
              //                             }),
              //                       )
              //                     ],
              //                   )
              //
              //                 ],
              //               ),
              //             ),
              //           ]
              //       );
              //
              //     }
              // ),
    ),
            ),
          );
  }
}

// class productPage extends StatelessWidget {
//   final String image, name, amount, weight, listName;
//   final GestureTapCallback press;
//
//   const productPage({Key key, this.image, this.name, this.amount, this.press, this.weight, this.listName}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//
//       daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context);
//      ize size = MediaQuery.of(context).size;
//       return Scaffold(
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: Colors.black),
//           backgroundColor: Colors.white,
//           centerTitle: true,
//           title: Text('Branded Ghee', style: TextStyle(
//               color: Colors.black
//           ),),
//         ),
//         body:
//         ListView.builder(
//           // shrinkWrap: true,
//             itemCount: daldanotifier.daldaList.length,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (BuildContext context, int index) {
//               return Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children:   [
//                     Container(
//                       height: 250,
//                       padding: EdgeInsets.only(left: 4, top: 8),
//                       margin: EdgeInsets.only(left: 10),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         border: Border.all(color: Colors.grey),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.network(image,
//                               height: size.height*0.20),
//                           //SizedBox(height: 15,),
//
//                           Text(name,style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                             textAlign: TextAlign.left,),
//                           //SizedBox(height: 10,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("Rs. " + amount + " (" + weight+ ")",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                                 textAlign: TextAlign.left,),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 18.0),
//                                 child: IconButton(
//                                     icon: Icon(Icons.add_shopping_cart),
//                                     onPressed: () {
//                                     }),
//                               )
//                             ],
//                           )
//
//                         ],
//                       ),
//                     ),
//                   ]
//               );
//
//             }
//         ),
//       );
//     }
//   }