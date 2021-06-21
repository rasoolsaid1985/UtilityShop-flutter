import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/product/_detail/flour/flour_api.dart';
import 'package:utility_shop/product/_detail/pulses/channa_api.dart';

import 'channaNotifier.dart';
import 'dalNotifier.dart';
import 'dal_api.dart';
import 'lobiaNotifier.dart';
import 'lobia_api.dart';




class lobia extends StatefulWidget {

  @override
  _lobiaState createState() => _lobiaState();
}

class _lobiaState extends State<lobia> {


  @override
  void initState() {
    lobiaNotifier lobianotifier = Provider.of<lobiaNotifier>(context, listen: false);
    getlobia(lobianotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    lobiaNotifier lobianotifier = Provider.of<lobiaNotifier>(context);
    Size size = MediaQuery.of(context).size;

    return

      Container(
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                  itemCount: lobianotifier.productList.length,
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
                                Image.network(lobianotifier.productList[index].image,
                                    height: size.height*0.20),
                                //SizedBox(height: 15,),

                                Text(lobianotifier.productList[index].name,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                  textAlign: TextAlign.left,),
                                //SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rs. " + lobianotifier.productList[index].amount + " (" + lobianotifier.productList[index].weight+ ")",
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


              ),
            ),
          ],
        ),
      );
  }
}
