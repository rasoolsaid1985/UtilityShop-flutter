import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/model/ProductNotifier.dart';
import 'package:utility_shop/product/_detail/ghee/manpasandGhee_api.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';
import 'package:utility_shop/utils/dalda_api.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/cart/cart_screen.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';
import 'package:utility_shop/utils/dalda_api.dart';

import 'daldaGhee_api.dart';






class daldaGhee extends StatefulWidget {

  @override
  _daldaGheeState createState() => _daldaGheeState();
}

class _daldaGheeState extends State<daldaGhee> {


  @override
  void initState() {
    ProductNotifier productnotifier = Provider.of<ProductNotifier>(context, listen: false);
    getProduct(productnotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProductNotifier productnotifier = Provider.of<ProductNotifier>(context);
    Size size = MediaQuery.of(context).size;
    return

      Container(
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                  itemCount: productnotifier.productList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:   [
                          Container(

                            padding: EdgeInsets.only(left: 4, top: 8),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(productnotifier.productList[index].image,
                                    height: size.height*0.20),
                                //SizedBox(height: 15,),

                                Text(productnotifier.productList[index].name,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                  textAlign: TextAlign.left,),
                                //SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rs. " + productnotifier.productList[index].amount + " (" + productnotifier.productList[index].weight+ ")",
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
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (BuildContext context){
                                                  return CartPage();
                                                })
                                            );
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


              ),
            ),
          ],
        ),
      );
  }
}
