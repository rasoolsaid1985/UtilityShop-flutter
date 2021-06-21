import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/model/ProductNotifier.dart';
import 'package:utility_shop/product/_detail/ghee/daldaGhee.dart';
import 'package:utility_shop/product/_detail/ghee/habibGhee.dart';
import 'package:utility_shop/product/_detail/ghee/manpasandGhee.dart';
import 'package:utility_shop/product/_detail/oil/daldaOil.dart';
import 'package:utility_shop/product/_detail/oil/maanOil.dart';
import 'package:utility_shop/product/_detail/pulses/lobia.dart';

import 'channa.dart';
import 'dal.dart';



class pulse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ProductNotifier productnotifier = Provider.of<ProductNotifier>(context);
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Pulses', style: TextStyle(
            color: Colors.black
        ),),
      ),
      body:
      SingleChildScrollView(
        child: Container(

          child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Daal",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                  dal(),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Channa",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ),
                  channa(),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Lobia / Beans",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ),
                  lobia(),
                ],
              )
          ),
        ),
      ),

    );
  }
}

