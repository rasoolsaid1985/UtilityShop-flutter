import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/constants.dart';
import 'package:utility_shop/product/_detail/flour/flourNotifier.dart';
import 'package:utility_shop/product/_detail/ghee/evaNotifier.dart';
import 'package:utility_shop/product/_detail/ghee/habibNotifier.dart';
import 'package:utility_shop/product/_detail/ghee/manpasandNotifier.dart';
import 'package:utility_shop/product/_detail/oil/daldaNotifier.dart';
import 'package:utility_shop/product/_detail/oil/dastakNotifier.dart';
import 'package:utility_shop/product/_detail/oil/maanNotifier.dart';
import 'package:utility_shop/product/_detail/pulses/channaNotifier.dart';
import 'package:utility_shop/product/_detail/pulses/dalNotifier.dart';
import 'package:utility_shop/product/_detail/pulses/lobiaNotifier.dart';
import 'package:utility_shop/product/_detail/sugar/sugarNotifier.dart';
import 'package:utility_shop/provider/app.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';
import 'package:utility_shop/provider/product.dart';
import 'package:utility_shop/provider/user.dart';
import 'cart/cartItemModel.dart';
import 'file:///D:/Programs/utility_shop/lib/screens/home/home.dart';
import 'package:utility_shop/screens/landing_page.dart';
import 'package:utility_shop/screens/recommended/firstRecommend_Notifier.dart';
import 'package:utility_shop/screens/rice/productNotifier.dart';
import 'package:utility_shop/screens/welcome.dart';

import 'model/ProductNotifier.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => daldaNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => ProductNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => manpasandNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => evaNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => habibNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => flourNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => daldaoilNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => dastakoilNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => maanoilNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => dalNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => channaNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => lobiaNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => sugarNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => firstNotifier(),
    ),


  ],
  child: MyApp(),));

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          )
      ),
      home: LandingPage(),
    );
  }
}