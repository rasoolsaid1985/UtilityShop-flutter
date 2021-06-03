import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utility_shop/cart/cart_screen.dart';
import 'package:utility_shop/screens/brand/brand.dart';
import 'package:utility_shop/screens/profile/profile.dart';



import 'Home_Body.dart';
import 'package:utility_shop/utils/auth.dart';

// class home_footer extends StatefulWidget {
//
//   @override
//   _home_footerState createState() => _home_footerState();
// }
//
// class _home_footerState extends State<home_footer> {
//   List itemstab = [
//     {"icon": Icons.home, "size":33.0, Icons.title: Text('Home')},
//     {"icon": FontAwesomeIcons.shoppingBag, "size":28.0, "text": "home"},
//     {"icon": FontAwesomeIcons.shoppingCart, "size":28.0, "text": "home"},
//     {"icon": FontAwesomeIcons.userAlt, "size":28.0, "text": "home"},
//   ];
//   int activeTab = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Row(
//           children: [
//             Container(
//               height: 60,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                 border: Border(top: BorderSide(color: Colors.blueGrey))
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: List.generate(4, (index) {
//
//                     return IconButton(
//                     icon: Icon(
//                       itemstab[index]['icon'],
//                      size: itemstab[index]['size'],
//                       //size: itemstab[index][Text],
//                       color: activeTab == index ? Colors.lightGreenAccent : Colors.blueGrey,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         activeTab = index;
//                       });
//                     });
//               }),
//             ),
//               ),
//             )
//           ],
//
//     );
//   }
// }
//

class home_footer extends StatefulWidget {
  @override
  _home_footerState createState() => _home_footerState();
}

class _home_footerState extends State<home_footer> {
  int _currentIndex = 0;

  final tabs =[
    Center(child: Home_Body()),
    Center(child: brand()),
    Center(child: CartPage()),
    Center(child: profile(),),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          // iconSize: 30,
          // selectedFontSize: 12,
          // unselectedFontSize: 10,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.shoppingBag),
                title: Text("Brands"),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.shoppingCart),
                title: Text("Cart"),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Account"),
                backgroundColor: Colors.blue
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex =index;
            });
          },
        ),

    );
  }
}

