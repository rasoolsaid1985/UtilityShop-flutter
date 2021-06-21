import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:utility_shop/screens/brand/dalda.dart';
import 'package:utility_shop/screens/brand/milkpak.dart';
import 'package:utility_shop/screens/brand/pepsi.dart';
import 'package:utility_shop/screens/brand/unilever.dart';

class topBrands extends StatelessWidget {
  const topBrands({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Carousel(
        dotSize: 4.0,
        dotColor: Colors.white,
        dotSpacing: 15.0,
        indicatorBgPadding: 5,
        dotBgColor: Colors.transparent,
        dotVerticalPadding: 5.0,
        images: [
          InkWell(child: Image.asset("assets/images/dalda logo.jpg"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return daldaBrand();
                },
              ),
            );
          },),
          InkWell(child: Image.asset("assets/images/pepsi.jpg"),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return pepsiBrand();
                },
              ),
            );
          },),
          InkWell(child: Image.asset("assets/images/unilever.png"),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return unileverBrand();
                },
              ),
            );
          },),
          InkWell(child: Image.asset("assets/images/milkpak.jpg"),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return milkpakBrand();
                },
              ),
            );
          },),
        ],
      ),
    );
  }
}




