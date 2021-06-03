import 'package:cloud_firestore/cloud_firestore.dart';

class Product{



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