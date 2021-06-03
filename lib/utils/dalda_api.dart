import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:utility_shop/product_model/product.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';

getDalda(daldaNotifier daldanotifier) async{
 QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('dalda oil').get();

 List<dalda> _daldaList =[];

 snapshot.docs.forEach((doc) {
   dalda Dalda = dalda.fromMap(doc.data());
   _daldaList.add(Dalda);
 });

 daldanotifier.daldaList = _daldaList;
}