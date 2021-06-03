import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';

class product_page extends StatelessWidget {
  final String image, text, price;
  final GestureTapCallback press;

  const product_page({Key key, this.image, this.text, this.price, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context);

    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 4, top: 8),
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),

                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset(image,
                              height: size.height*0.20),
                        ),
                        onTap: press,
                      ),
                      //SizedBox(height: 15,),
                      Text(text,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                        textAlign: TextAlign.left,),
                      //SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween,
                        children: [
                          Text(price,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 1,
                            ),
                            textAlign: TextAlign.left,),
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: IconButton(
                                icon: Icon(Icons.add_shopping_cart),
                                onPressed: press
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: size.width * 0.04),
              ],

            ),
          ),
        ]
    );
  }
}