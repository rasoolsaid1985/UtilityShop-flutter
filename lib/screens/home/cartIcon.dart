import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
class carticon extends StatelessWidget {
  const carticon({
    Key key,
    @required this.svgSrc,
    this.noOfItems,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int noOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 40,
            width: 40,
              decoration: BoxDecoration(
                color: login_textField,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(svgSrc),
            ),
          if(noOfItems !=0)
            Positioned(
              top: -3,
                right: 0,
              child: Container(
                height: 16,
                  width: 16,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text("$noOfItems", style: TextStyle(
                    fontSize: 10,
                    height: 1,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

