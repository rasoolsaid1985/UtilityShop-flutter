import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/model/ProductNotifier.dart';
import 'package:utility_shop/product/_detail/ghee/daldaGhee.dart';
import 'package:utility_shop/product/_detail/ghee/habibGhee.dart';
import 'package:utility_shop/product/_detail/ghee/manpasandGhee.dart';
import 'package:utility_shop/product/_detail/oil/daldaOil.dart';
import 'package:utility_shop/product/_detail/oil/maanOil.dart';
import 'package:utility_shop/product/_detail/pulses/lobia.dart';

import 'firstRecommend.dart';




class firstRecommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ProductNotifier productnotifier = Provider.of<ProductNotifier>(context);
    Size size = MediaQuery
        .of(context)
        .size;
    return
      SingleChildScrollView(
        child: Container(

          child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [

                  firstRecommend(),


                ],
              )
          ),
        ),
      );

  }
}

