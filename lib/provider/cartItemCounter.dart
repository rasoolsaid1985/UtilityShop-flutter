import 'package:flutter/foundation.dart';
import 'package:utility_shop/utils/config.dart';

class CartItemCounter extends ChangeNotifier
{
  int _counter = config.sharedPreferences.getStringList(config.userCartList).length-1;
  int get count => _counter;

  Future<void> displayResult() async
  {
    int _counter = config.sharedPreferences.getStringList(config.userCartList).length-1;

    await Future.delayed(const Duration(milliseconds: 100), (){
      notifyListeners();
    });
  }
}