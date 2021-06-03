//
//
// import 'dart:collection';
//
// import 'package:flutter/cupertino.dart';
// import 'package:utility_shop/product_model/product.dart';
// import 'package:utility_shop/screens/rice/product.dart';
//
// class productNotifier with ChangeNotifier{
//   List<product> _productList = [];
//   dalda _currentDalda;
//
//   UnmodifiableListView<product> get productList => UnmodifiableListView(_productList);
//
//   dalda get currentDalda => _currentDalda;
//
//   set productList(List<product> productList){
//     _productList = productList;
//     notifyListeners();
//   }
//
//   set currentDalda(dalda dalda){
//     _currentDalda = currentDalda;
//     notifyListeners();
//   }
//
// }