import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/product/_detail/flour/flour_api.dart';
import 'package:utility_shop/product/_detail/pulses/channa_api.dart';

import 'firstRecommend_Notifier.dart';
import 'firstRecommend_api.dart';




class firstRecommend extends StatefulWidget {

  @override
  _firstRecommendState createState() => _firstRecommendState();
}

class _firstRecommendState extends State<firstRecommend> {


  @override
  void initState() {
    firstNotifier lobianotifier = Provider.of<firstNotifier>(context, listen: false);
    getfirstRecommend(lobianotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    firstNotifier lobianotifier = Provider.of<firstNotifier>(context);
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
                            width: size.width*0.45,
                            padding: EdgeInsets.only(left: 7, top: 8, ),
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
