import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:utility_shop/model/ProductNotifier.dart';
import 'package:utility_shop/model/product.dart';
import 'package:utility_shop/product/_detail/ghee/manpasandNotifier.dart';
import 'package:utility_shop/product_model/product.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';
import 'package:utility_shop/screens/rice/product.dart';
import 'package:utility_shop/screens/rice/productNotifier.dart';

import 'flourNotifier.dart';


getflour(flourNotifier productnotifier) async{

  QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('flour').get();

  List<Product> _productList =[];

  snapshot.docs.forEach((doc) {
    Product product = Product.fromMap(doc.data());
    _productList.add(product);
  });

  productnotifier.productList = _productList;
}