import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile_menu extends StatelessWidget {
  const profile_menu({
    Key key, this.text, this.icon, this.press,
  }) : super(key: key);

  final String text, icon;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: FlatButton(onPressed: press,
          padding: EdgeInsets.all(20),
          color: Color(0xFFF5F6F9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SvgPicture.asset(icon,
              height: 15,
              width: 15,
              //color: Colors.redAccent,
              ),
              SizedBox(width: 20,),
              Expanded(child: Text(text,
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
      ),
    );
  }
}