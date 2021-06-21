import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:shared_preferences/shared_preferences.dart';

class config
{
  static const String appName = 'e-Shop';
  // SharedPreferences prefs = await SharedPreferences.
  static SharedPreferences sharedPreferences;
  //static FirebaseFirebaseUser user;
  static FirebaseAuth auth;
  static FirebaseFirestore firestore ;

  static String collectionUser = "users";
  static String collectionOrders = "orders";
  static String userCartList = 'userCart';
  static String subCollectionAddress = 'userAddress';

  static final String userName = 'name';
  static final String userEmail = 'email';
  static final String userPhotoUrl = 'photoUrl';
  static final String userUID = 'uid';
  static final String userAvatarUrl = 'url';

  static final String addressID = 'addressID';
  static final String totalAmount = 'totalAmount';
  static final String productID = 'productIDs';
  static final String paymentDetails ='paymentDetails';
  static final String orderTime ='orderTime';
  static final String isSuccess ='isSuccess';
  static List<String> tempCartList = new List<String>();

}