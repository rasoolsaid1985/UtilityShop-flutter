import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/model/ProductNotifier.dart';
import 'package:utility_shop/product/_detail/ghee/daldaGhee.dart';
import 'package:utility_shop/product/_detail/ghee/habibGhee.dart';
import 'package:utility_shop/product/_detail/ghee/manpasandGhee.dart';
import 'package:utility_shop/product/_detail/oil/daldaOil.dart';
import 'package:utility_shop/product/_detail/oil/maanOil.dart';

import 'dastakOil.dart';


class Oil extends StatelessWidget {
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
        title: Text('Branded Ghee', style: TextStyle(
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
                      Text("Dalda Ghee",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                  daldaOil(),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Maan Ghee",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ),
                  maanOil(),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Dastak Ghee",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ),
                  dastakOil(),
                ],
              )
          ),
        ),
      ),

    );
  }
}

