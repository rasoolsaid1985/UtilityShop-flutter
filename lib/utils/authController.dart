import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utility_shop/constants.dart';


class UserController extends GetxController {
  static UserController instance = Get.find();
  Rx<User> firebaseUser;
  RxBool isLoggedIn = false.obs;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String usersCollection = "users";
  Rx<UserModel> userModel = UserModel().obs;







  _addUserToFirestore(String userId) {
    FirebaseFirestore.instance.collection('button').doc(FirebaseAuth.instance.currentUser.uid).set({
      "name": name.text.trim(),
      "id": userId,
      "email": email.text.trim(),
      "cart": []
    });
  }



  _clearControllers() {
    name.clear();
    email.clear();
    password.clear();
  }

  updateUserData(Map<String, dynamic> data) {
    logger.i("UPDATED");
    FirebaseFirestore.instance
        .collection(usersCollection)
        .doc(firebaseUser.value.uid)
        .update(data);
  }

  Stream<UserModel> listenToUser() => FirebaseFirestore.instance
      .collection(usersCollection)
      .doc(firebaseUser.value.uid)
      .snapshots()
      .map((snapshot) => UserModel.fromSnapshot(snapshot));
}

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";

  String id;
  String name;
  String email;

  UserModel({this.id, this.name, this.email});

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {

  }


}