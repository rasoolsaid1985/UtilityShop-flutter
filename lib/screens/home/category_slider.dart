import 'package:flutter/material.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';
import 'package:utility_shop/screens/home/home_slider.dart';

class category_slider extends StatelessWidget {
  final String text;
  const category_slider({
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black),
          ),
        ),
      ],
    );
  }
}
// class category_show extends StatelessWidget {
//
//   Items item1 = new Items(
//       title: "",
//       subtitle: "March, Wednesday",
//       event: "3 Events",
//       img: "assets/images/slider.png");
//
//   Items item2 = new Items(
//     title: "Groceries",
//     subtitle: "Bocali, Apple",
//     event: "4 Items",
//     img: "assets/images/slider.png",
//   );
//   Items item3 = new Items(
//     title: "Locations",
//     subtitle: "Lucy Mao going to Office",
//     event: "",
//     img: "assets/images/slider.png",
//   );
//   Items item4 = new Items(
//     title: "Activity",
//     subtitle: "Rose favirited your Post",
//     event: "",
//     img: "assets/images/slider.png",
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     List<Items> myList = [item1, item2, item3, item4];
//     Size size = MediaQuery.of(context).size;
//     return Flexible(
//       child: GridView.count(
//           childAspectRatio: 1.0,
//           //padding: EdgeInsets.only(left: 16, right: 16),
//           crossAxisCount: 2,
//           crossAxisSpacing: 18,
//           mainAxisSpacing: 18,
//           children: myList.map((data) {
//             return Container(
//               decoration: BoxDecoration(
//                   // borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.asset(
//                     data.img,
//                     //width: 42,
//                   ),
//                   Image.asset(
//                     data.img,
//                     //width: 42,
//                   ),
//                   Image.asset(
//                     data.img,
//                    // width: 42,
//                   ),
//                   Image.asset(
//                     data.img,
//                     //width: 42,
//                   ),
//                   // SizedBox(
//                   //   height: 14,
//                   // ),
//                   //
//                   // SizedBox(
//                   //   height: 8,
//                   // ),
//                   //
//                   // SizedBox(
//                   //   height: 14,
//                   // ),
//
//                 ],
//               ),
//             );
//           }).toList()),
//     );
//   }
// }
//
//
// class Items {
//   String title;
//   String subtitle;
//   String event;
//   String img;
//   Items({this.title, this.subtitle, this.event, this.img});
// }
