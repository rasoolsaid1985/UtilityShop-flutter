

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:utility_shop/product_model/product.dart';

class daldaNotifier with ChangeNotifier{
  List<dalda> _daldaList = [];
  dalda _currentDalda;

  UnmodifiableListView<dalda> get daldaList => UnmodifiableListView(_daldaList);

  dalda get currentDalda => _currentDalda;

  set daldaList(List<dalda> daldaList){
    _daldaList = daldaList;
    notifyListeners();
  }

  set currentDalda(dalda dalda){
    _currentDalda = currentDalda;
    notifyListeners();
  }

}