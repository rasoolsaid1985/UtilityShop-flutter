import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:utility_shop/product_model/product.dart';

class ProductServices {
  String collection = "dalda oil";
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Future<List<ProductModel>> getProducts() async =>
  //     _firestore.collection(collection).get().then((result) {
  //       List<ProductModel> products = [];
  //       for (DocumentSnapshot product in result.docs) {
  //         products.add(ProductModel.fromSnapshot(product));
  //       }
  //       return products;
  //     });


//   Future<List<ProductModel>> searchProducts({String productName}) {
//     // code to convert the first character to uppercase
//     String searchKey = productName[0].toUpperCase() + productName.substring(1);
//     return _firestore
//         .collection(collection)
//         .orderBy("name")
//         .startAt([searchKey])
//         .endAt([searchKey + '\uf8ff'])
//         .get()
//         .then((result) {
//       List<ProductModel> products = [];
//       for (DocumentSnapshot product in result.docs) {
//         products.add(ProductModel.fromSnapshot(product));
//       }
//       return products;
//     });
//   }
}