import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/model/ProductNotifier.dart';
import 'package:utility_shop/product/_detail/ghee/manpasandGhee.dart';

import 'flourDetail.dart';


class Flour extends StatelessWidget {
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
        title: Text('Flour', style: TextStyle(
            color: Colors.black
        ),
        ),
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
                      Text("Flour / Atta",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                  flour(),


                ],
              )
          ),
        ),
      ),

    );
  }
}

