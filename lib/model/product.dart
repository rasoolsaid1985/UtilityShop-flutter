import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier{



  String id;
  String name;
  String image;
  String amount;
  String weight;

  Product.fromMap(Map<String,dynamic>data) {
    id = data['id'];
    name = data['name'];
    image = data['image'];
    amount = data['amount'];
    weight = data['weight'];
  }
}
//
// var amount=evanotifier.productList[index].amount;
// var image= evanotifier.productList[index].image;
// var   weight= evanotifier.productList[index].weight;
// var  name = evanotifier.productList[index].name;
// //CartPage(name: name , image: image, weight: weight, amount: amount,);
//
// // daldanotifier.currentDalda = daldanotifier.daldaList[index];
// Navigator.of(context).push(
// MaterialPageRoute(builder: (BuildContext context){
// return CartPage(name: name , image: image, weight: weight, amount: amount);
// })
// );