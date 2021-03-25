import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class SocialIcons extends StatelessWidget {
  final String iconsrc;
  final Function press;
  const SocialIcons({
    Key key, this.iconsrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: login_textField,
            ),
            shape: BoxShape.circle
        ),
        child: SvgPicture.asset(iconsrc, height: 20, width: 20),
      ),
    );
  }
}
