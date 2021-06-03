import 'package:cloud_firestore/cloud_firestore.dart';

class dalda {



  String id;
  String name;
  String image;
  String amount;
  String weight;

  dalda.fromMap(Map<String,dynamic>data) {
    id = data['id'];
    name = data['name'];
    image = data['image'];
    amount = data['amount'];
    weight = data['weight'];
  }
}