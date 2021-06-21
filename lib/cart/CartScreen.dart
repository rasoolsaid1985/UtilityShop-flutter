// import 'package:flutter/material.dart';
// // import 'package:flutter_ecom/models/orders.dart';
// import 'package:provider/provider.dart';
//
// import 'cartItem.dart';
// import 'cartItemModel.dart';
// // import '../models/cart.dart';
// // import '../widgets/cart_item.dart';
//
// class CartScreen extends StatelessWidget {
//   static const routeName = '/cart';
//
//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<Cart>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Shopping Cart',
//           style: TextStyle(fontSize: 30, color: Theme.of(context).accentColor),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: ListView.builder(
//                 itemCount: cart.items.length,
//                 itemBuilder: (ctx, i) => CartPdt(
//                     cart.items.values.toList()[i].id,
//                     cart.items.keys.toList()[i],
//                     cart.items.values.toList()[i].amount,
//                     cart.items.values.toList()[i].quantity,
//                     cart.items.values.toList()[i].name,
//                 cart.items.values.toList()[i].image,
//                 )),
//           ),
//           FlatButton(onPressed: (){}, color: Colors.green,
//             padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(24))),
//             child: Text(
//               "Checkout",
//             ),
//           ),
//           // FlatButton(
//           //     onPressed: () {
//           //     },
//           //     child: Text(
//           //       'Checkout',
//           //       style: TextStyle(color: Colors.blue, fontSize: 20),
//           //     ))
//         ],
//       ),
//     );
//   }
// }