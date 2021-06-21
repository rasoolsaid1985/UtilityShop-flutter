import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/product/_detail/flour/flour_api.dart';
import 'package:utility_shop/product/_detail/sugar/sugarNotifier.dart';

import 'sugar_api.dart';




class sugar extends StatefulWidget {

  @override
  _sugarState createState() => _sugarState();
}

class _sugarState extends State<sugar> {


  @override
  void initState() {
    sugarNotifier sugarnotifier = Provider.of<sugarNotifier>(context, listen: false);
    getsugar(sugarnotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    sugarNotifier sugarnotifier = Provider.of<sugarNotifier>(context);
    Size size = MediaQuery.of(context).size;

    return

      Container(
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                  itemCount: sugarnotifier.productList.length,
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
                                Image.network(sugarnotifier.productList[index].image,
                                    height: size.height*0.20),
                                //SizedBox(height: 15,),

                                Text(sugarnotifier.productList[index].name,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                  textAlign: TextAlign.left,),
                                //SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rs. " + sugarnotifier.productList[index].amount + " (" + sugarnotifier.productList[index].weight+ ")",
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
