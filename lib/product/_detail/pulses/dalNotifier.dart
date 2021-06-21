

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:utility_shop/model/product.dart';
import 'package:utility_shop/product_model/product.dart';


class dalNotifier with ChangeNotifier{
  List<Product> _productList = [];
  dalda _currentDalda;

  UnmodifiableListView<Product> get productList => UnmodifiableListView(_productList);

  dalda get currentDalda => _currentDalda;

  set productList(List<Product> productList){
    _productList = productList;
    notifyListeners();
  }

  set currentDalda(dalda dalda){
    _currentDalda = currentDalda;
    notifyListeners();
  }

}