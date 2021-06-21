import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utility_shop/cart/cart_screen.dart';
import 'package:utility_shop/model/ProductNotifier.dart';
import 'package:utility_shop/provider/cartItemCounter.dart';

import 'evaNotifier.dart';
import 'evaghee_api.dart';
import 'manpasandGhee_api.dart';
import 'manpasandNotifier.dart';
import 'package:utility_shop/utils/config.dart';









class evaGhee extends StatefulWidget {

  @override
  _evaGheeState createState() => _evaGheeState();
}

class _evaGheeState extends State<evaGhee> {


  @override
  void initState() {
    evaNotifier evanotifier = Provider.of<evaNotifier>(context, listen: false);
    getevaGhee(evanotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    evaNotifier evanotifier = Provider.of<evaNotifier>(context);
    Size size = MediaQuery.of(context).size;

    return

      Container(
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                  itemCount: evanotifier.productList.length,
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
                                Image.network(evanotifier.productList[index].image,
                                    height: size.height*0.20),
                                //SizedBox(height: 15,),

                                Text(evanotifier.productList[index].name,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                  textAlign: TextAlign.left,),
                                //SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rs. " + evanotifier.productList[index].amount + " (" + evanotifier.productList[index].weight+ ")",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18.0),
                                      child: IconButton(
                                          icon: Icon(Icons.add_shopping_cart),
                                          onPressed: () {
                                            checkItemInCart(
                                                evanotifier.productList[index]
                                                    .image, context);
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
  Future<void> checkItemInCart(String shortInfoAsID, BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (config.tempCartList.contains(shortInfoAsID)) {
      Fluttertoast.showToast(msg: "Item is already in Cart.");
    }
    else{
      prefs.getString(config.userCartList).contains(
          shortInfoAsID)
          ? Fluttertoast.showToast(msg: "Item is already in Cart.")

          : addItemToCart(shortInfoAsID, context);
    }

  }


  addItemToCart(String shortInfoAsID, BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var firestore = FirebaseFirestore.instance ;
    prefs.setString(config.userCartList, shortInfoAsID);
    if(prefs == null){
      print('ho');
    }else{
      //List<String> tempCartList = new List<String>();
      //List<String> tempCartList ;
      config.tempCartList.add(shortInfoAsID);
      firestore.collection(config.collectionUser)
          .doc(prefs.getString(config.userUID))
          .set({
        config.userCartList: config.tempCartList,
      }).then((v){
        Fluttertoast.showToast(msg: "Item Added to Cart Successfully.");

        config.sharedPreferences.setStringList(config.userCartList, config.tempCartList);

        Provider.of<CartItemCounter>(context, listen: false).displayResult();
      });
      // List tempCartList = prefs.getStringList(config.userCartList);
      // tempCartList.add(shortInfoAsID);
      // print(tempCartList);
      //   firestore.collection(config.collectionUser)
      //       .doc(config.userCartList)
      //       .set({
      //     config.userCartList: tempCartList[0].toString(),
      //   }).then((v) {
      //     Fluttertoast.showToast(msg: "Item Added to Cart Successfully.");
      //
      //     prefs.setStringList(config.userCartList, tempCartList);
      //
      //     Provider.of<CartItemCounter>(context, listen: false).displayResult();
      //   });
    }

  }}