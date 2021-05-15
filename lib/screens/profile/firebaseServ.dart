import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'task.dart';

final CollectionReference myCollection= FirebaseFirestore.instance.collection('A1KhUgnqlrabC75813eP');

class firestoreService{

  Future<task> createToDOtask(String firstName, String lastName)async{
    final TransactionHandler createTransaction = (Transaction tx) async {
      final DocumentSnapshot ds = await tx.get(myCollection.doc());

      final task Task = task(firstName, lastName);
      final Map<String,dynamic> data =  Task.toMap();
      await tx.set(ds.reference, data);
      return data;
    };

    return FirebaseFirestore.instance.runTransaction(createTransaction).then((mapData){
      return task.fromMap(mapData);
    }).catchError((error){
      print('error:$Error');
      return null;
      });
  }

  Stream <QuerySnapshot> getTaskList({int offset, int limit}){
    Stream<QuerySnapshot> snapshots = myCollection.snapshots();
    if(offset!=null){
      snapshots = snapshots.take(offset);
    }
    if(limit!=null){
      snapshots = snapshots.take(limit);
    }
    return snapshots;
  }

}