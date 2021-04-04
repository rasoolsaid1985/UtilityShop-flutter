import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            height: 60,
            width: 65,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  // height: 40,
                  // width: 40,
                  //margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(20),
                    //shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(icon),
                ),
                SizedBox(height: 2),
                Text(text,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}