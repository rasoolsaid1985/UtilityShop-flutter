import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/cart/cart_screen.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';

class productDetail extends StatelessWidget {
  final String image, name, amount, weight;

  const productDetail({Key key, this.image, this.name, this.amount, this.weight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context);
    Size size = MediaQuery.of(context).size;
    return

      Expanded(
        child: ListView.builder(
          // shrinkWrap: true,
            itemCount: daldanotifier.daldaList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                    Container(
                      height: 250,
                      padding: EdgeInsets.only(left: 4, top: 8),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(image,
                              height: size.height*0.20),
                          //SizedBox(height: 15,),

                          Text(name,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                            textAlign: TextAlign.left,),
                          //SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rs. " + amount + " (" + weight+ ")",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                      // daldanotifier.currentDalda = daldanotifier.daldaList[index];
                                      // Navigator.of(context).push(
                                      //     MaterialPageRoute(builder: (BuildContext context){
                                      //       return CartPage();
                                      //     })
                                      // );
                                    }),
                              )
                            ],
                          )

                        ],
                      ),
                    ),
                  ]
              );
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
      );
  }
}
