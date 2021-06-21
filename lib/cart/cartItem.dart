// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'cartItemModel.dart';
//
//
// class CartPdt extends StatelessWidget {
//   final String id;
//   final String productId;
//   final double amount;
//   final int quantity;
//   final String name;
//   final String image;
//
//   CartPdt(this.id, this.productId, this.amount, this.quantity, this.name, this.image);
//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//       key: ValueKey(id),
//       direction: DismissDirection.endToStart,
//       background: Container(
//         color: Colors.red,
//       ),
//       onDismissed: (direction) {
//         Provider.of<Cart>(context, listen: false).removeItem(productId);
//       },
//       child: Card(
//         child: ListTile(
//           leading: CircleAvatar(
//             child: FittedBox(child: Text('\$$amount')),
//           ),
//           title: Text(name),
//           subtitle: Text('Total: \$${(amount * quantity)}'),
//           trailing: Text('$quantity x'),
//         ),
//       ),
//     );
//   }
// }