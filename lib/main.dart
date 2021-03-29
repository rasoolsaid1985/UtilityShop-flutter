import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utility_shop/constants.dart';
import 'file:///D:/Programs/utility_shop/lib/screens/home/home.dart';
import 'package:utility_shop/screens/landing_page.dart';
import 'package:utility_shop/screens/welcome.dart';

void main() {
  runApp(MyApp());

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


