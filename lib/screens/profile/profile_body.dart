import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utility_shop/screens/profile/profile_menu.dart';
import 'package:utility_shop/screens/profile/profile_picture.dart';

class profileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Profile",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              profile_picture(),
              SizedBox(height: 20,),
              profile_menu(icon: 'assets/icons/Bell.svg',
              text: "My Account",
              press: (){},
              ),
              profile_menu(icon: 'assets/icons/Bell.svg',
                text: "My Account",
                press: (){},
              ),
              profile_menu(icon: 'assets/icons/Bell.svg',
                text: "My Account",
                press: (){},
              )
            ],
          ),
        )
    );
  }
}

// class profile_menu extends StatelessWidget {
//   const profile_menu({
//     Key key, this.text, this.icon, this.press,
//   }) : super(key: key);
//
//   final String text, icon;
//
//   final VoidCallback press;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//       child: FlatButton(onPressed: press,
//           padding: EdgeInsets.all(20),
//           color: Color(0xFFF5F6F9),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Row(
//             children: [
//               SvgPicture.asset(icon,
//               color: Colors.redAccent,),
//               SizedBox(width: 20,),
//               Expanded(child: Text(text,
//                 style: TextStyle(
//                   color: Colors.black
//                 ),
//               ),
//               ),
//               Icon(Icons.arrow_forward_ios)
//             ],
//           )),
//     );
//   }
// }


