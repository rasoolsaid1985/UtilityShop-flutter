import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product_page extends StatelessWidget {
  final String image, text, price;
  final GestureTapCallback press;

  const product_page({Key key, this.image, this.text, this.price, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                  height: size.height*0.35,
                  width: size.width*0.45,
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
                      Text(price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 1,
                        ),
                        textAlign: TextAlign.left,)
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