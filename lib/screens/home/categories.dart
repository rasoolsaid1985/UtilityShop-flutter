import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
    child: Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            //padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
            decoration: BoxDecoration(
              color: Color(0xFFFFECDF),
              borderRadius: BorderRadius.circular(19),
            ),
            child: SvgPicture.asset("assets/icons/Bell.svg"),
          ),
        ),
        SizedBox(height: 5),
        Text("Ghee"),
      ],
    ),
    );
  }
}
