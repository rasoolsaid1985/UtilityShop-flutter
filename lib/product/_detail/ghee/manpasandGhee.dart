import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/model/ProductNotifier.dart';

import 'manpasandGhee_api.dart';
import 'manpasandNotifier.dart';









class manpasandGhee extends StatefulWidget {

  @override
  _manpasandGheeState createState() => _manpasandGheeState();
}

class _manpasandGheeState extends State<manpasandGhee> {


  @override
  void initState() {
    manpasandNotifier manpasandnotifier = Provider.of<manpasandNotifier>(context, listen: false);
    getmanpasandGhee(manpasandnotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    manpasandNotifier manpasandnotifier = Provider.of<manpasandNotifier>(context);
    Size size = MediaQuery.of(context).size;
    return

      Container(
        height: 250,
        child: Column(
          children: [
            Expanded(

              child: ListView.builder(
               //  shrinkWrap: true,
                  itemCount: manpasandnotifier.productList.length,
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
                                Image.network(manpasandnotifier.productList[index].image,
                                    height: size.height*0.20),
                                //SizedBox(height: 15,),

                                Text(manpasandnotifier.productList[index].name,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                  textAlign: TextAlign.left,),
                                //SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rs. " + manpasandnotifier.productList[index].amount + " (" + manpasandnotifier.productList[index].weight+ ")",
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
