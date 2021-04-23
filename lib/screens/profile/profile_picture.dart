import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile_picture extends StatelessWidget {
  const profile_picture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      //height: size.height*0.25,
      //width: size.width*0.25,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/slider (2).png'),
          ),
          Positioned(
            right: 6,
            bottom: -15,
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.black)
                ),
                color: Colors.white,
                onPressed: () {},
                child: Icon(FontAwesomeIcons.plus,
                  color: Colors.grey,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}