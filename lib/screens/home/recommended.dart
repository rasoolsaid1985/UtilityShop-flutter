import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class recommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 4),
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              height: size.height*0.3,
              width: size.width*0.45,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/slider.png",
                    height: size.height*0.20),
                    SizedBox(height: 8,),
                    Text("Feroni Skirt",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                      textAlign: TextAlign.left,),
                    SizedBox(height: 5,),
                    Text("Rs. 500",
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,)
                  ],
                ),
              ),
            SizedBox(width: size.width*0.04),
            Container(
              padding: EdgeInsets.only(left: 4),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              height: size.height*0.30,
              width: size.width*0.45,
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/slider.png",
                    height: size.height*0.2,
                    ),
                    SizedBox(height: 8,),
                    Text("Feroni Skirt",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                      textAlign: TextAlign.left,),
                    SizedBox(height: 5,),
                    Text("Rs. 500",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,)
                  ],
                ),
              ),

            ),


          ],
        ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    padding: EdgeInsets.only(left: 4),
    margin: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    ),
    height: size.height*0.3,
    width: size.width*0.45,
    child: Column(
    //mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Image.asset("assets/images/slider.png",
    height: size.height*0.20),
    SizedBox(height: 8,),
    Text("Feroni Skirt",style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    textAlign: TextAlign.left,),
    SizedBox(height: 5,),
    Text("Rs. 500",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.left,)
    ],
    ),
    ),
    SizedBox(width: size.width*0.04),
    Container(
    padding: EdgeInsets.only(left: 4),
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    ),
    height: size.height*0.30,
    width: size.width*0.45,
    child: Padding(
    padding: EdgeInsets.only(left: 8),
    child: Column(
    //mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Image.asset("assets/images/slider.png",
    height: size.height*0.2,
    ),
    SizedBox(height: 8,),
    Text("Feroni Skirt",style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    textAlign: TextAlign.left,),
    SizedBox(height: 5,),
    Text("Rs. 500",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.left,)
    ],
    ),
    ),

    ),


    ],
    ),
    ],
    );
  }
}
