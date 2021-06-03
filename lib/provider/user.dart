import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utility_shop/product_model/product.dart';
import 'package:uuid/uuid.dart';

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

class UserProvider with ChangeNotifier {
  FirebaseAuth _auth;
  Status _status = Status.Uninitialized;


//  getter

  Status get status => _status;


  // public variables


//
//   Future<bool> addToCart(
//       {ProductModel product, String size, String color}) async {
//     try {
//       var uuid = Uuid();
//       String cartItemId = uuid.v4();
//       //List<CartItemModel> cart = _userModel.cart;
//
//       Map cartItem = {
//         "id": cartItemId,
//         "name": product.name,
//         "image": product.picture,
//         "productId": product.id,
//         "price": product.price,
//         "size": size,
//         "color": color
//       };
//
//       CartItemModel item = CartItemModel.fromMap(cartItem);
// //      if(!itemExists){
//       print("CART ITEMS ARE: ${cart.toString()}");
//       _userServices.addToCart(userId: _user.uid, cartItem: item);
// //      }
//
//       return true;
//     } catch (e) {
//       print("THE ERROR ${e.toString()}");
//       return false;
//     }
//   }

  // Future<bool> removeFromCart({CartItemModel cartItem})async{
  //   print("THE PRODUC IS: ${cartItem.toString()}");
  //
  //   try{
  //     _userServices.removeFromCart(userId: _user.uid, cartItem: cartItem);
  //     return true;
  //   }catch(e){
  //     print("THE ERROR ${e.toString()}");
  //     return false;
  //   }
  //
  // }

  getOrders() async {
//     orders = await _orderServices.getUserOrders(userId: _user.uid);
//     notifyListeners();
//   }
//
//   Future<void> reloadUserModel()async{
//     _userModel = await _userServices.getUserById(user.uid);
//     notifyListeners();
//   }
// }
  }
}