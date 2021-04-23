import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utility_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:utility_shop/screens/home/Home_Body.dart';
import 'package:utility_shop/screens/home/footer_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: home_footer(),
        // Row(
        //   children: [
        //     Container(
        //       height: size.height*0.06,
        //       width: MediaQuery.of(context).size.width,
        //       decoration: BoxDecoration(
        //           color: Colors.green
        //       ),
        //     )
        //   ],
        // ),
      body: Center(
        child: Home_Body(),
      ),
    );
  }
}


