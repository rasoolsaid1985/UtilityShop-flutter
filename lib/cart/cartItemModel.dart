// import 'package:flutter/foundation.dart';
//
// class CartItem {
//   final String id;
//   final String name;
//   final int quantity;
//   final double amount;
//   final String image;
//
//   CartItem(
//       {@required this.id,
//         @required this.name,
//         @required this.quantity,
//         @required this.amount,
//       @required this.image});
// }
//
// class Cart with ChangeNotifier {
//   Map<String, CartItem> _items = {};
//
//   Map<String, CartItem> get items {
//     return {..._items};
//   }
//
//   int get itemCount {
//     return _items.length;
//   }
//
//   void addItem(String pdtid, String name, double amount, String image) {
//     if (_items.containsKey(pdtid)) {
//       _items.update(
//           pdtid,
//               (existingCartItem) => CartItem(
//               id: DateTime.now().toString(),
//               name: existingCartItem.name,
//               quantity: existingCartItem.quantity + 1,
//               amount: existingCartItem.amount,
//               image: existingCartItem.image));
//     } else {
//       _items.putIfAbsent(
//           pdtid,
//               () => CartItem(
//             name: name,
//             id: DateTime.now().toString(),
//             quantity: 1,
//                 amount: amount,
//                 image: image,
//           ));
//     }
//     notifyListeners();
//   }
//
//   void removeItem(String id) {
//     _items.remove(id);
//     notifyListeners();
//   }
//
//   void removeSingleItem(String id) {
//     if (!_items.containsKey(id)) {
//       return;
//     }
//     if (_items[id].quantity > 1) {
//       _items.update(
//           id,
//               (existingCartItem) => CartItem(
//               id: DateTime.now().toString(),
//               name: existingCartItem.name,
//               quantity: existingCartItem.quantity - 1,
//               amount: existingCartItem.amount,
//               image: existingCartItem.image));
//     }
//     notifyListeners();
//   }
//
//   double get totalAmount {
//     var total = 0.0;
//     _items.forEach((key, cartItem) {
//       total += cartItem.amount * cartItem.quantity;
//     });
//     return total;
//   }
//
//   void clear() {
//     _items = {};
//     notifyListeners();
//   }
// }