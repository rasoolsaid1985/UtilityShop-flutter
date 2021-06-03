//
// import 'package:flutter/material.dart';
// import 'package:utility_shop/product_model/product.dart';
// import 'package:utility_shop/product_model/product_service.dart';
//
// class ProductProvider with ChangeNotifier{
//   ProductServices _productServices = ProductServices();
//   List<ProductModel> products = [];
//   List<ProductModel> productsSearched = [];
//
//
//   ProductProvider.initialize(){
//     loadProducts();
//   }
//
//   loadProducts()async{
//     products = await _productServices.getProducts();
//     notifyListeners();
//   }
//
//   Future search({String productName})async{
//     productsSearched = await _productServices.searchProducts(productName: productName);
//     notifyListeners();
//   }
//
// }