import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utility_shop/screens/Login/login.dart';
import 'package:utility_shop/screens/profile/edit_profile.dart';
import 'package:utility_shop/screens/profile/notification.dart';
import 'package:utility_shop/screens/profile/payment.dart';
import 'package:utility_shop/screens/profile/profile_menu.dart';
import 'package:utility_shop/screens/profile/profile_picture.dart';
import 'package:utility_shop/screens/profile/task.dart';
import 'package:utility_shop/screens/welcome.dart';

import 'firebaseServ.dart';

class profileBody extends StatefulWidget {
  @override
  _profileBodyState createState() => _profileBodyState();
}

class _profileBodyState extends State<profileBody> {
  //final CollectionReference myCollection= FirebaseFirestore.instance.collection('A1KhUgnqlrabC75813eP');
  String userName = "placeholder";
  dynamic data;
  final myCollection= FirebaseFirestore.instance.collection('button').doc(FirebaseAuth.instance.currentUser.uid);
  //var document = await Firestore.instance.collection('button'.document('A1KhUgnqlrabC75813eP');

  // List<task> items;
  // firestoreService fireserv = new firestoreService();
  // StreamSubscription<QuerySnapshot> todoTask;
  //
  // void initState () {
  //   super.initState();
  //   items =new List();
  //
  //   todoTask?.cancel();
  //   todoTask=fireserv.getTaskList().listen((QuerySnapshot snapshot){
  //     final List<task> tasks = snapshot.docs.map((documentSnapshot) => task.fromMap(documentSnapshot.data))
  //         .toList();
  //     setState(() {
  //       this.items = tasks;
  //     });
 // then((querySnapshot)
  //   });
  // }
  Future getUserProfile () async {

    List itemList = [];
    try{
      await myCollection.snapshots().listen((querySnapshot) {
        print(querySnapshot.data()["firstName"]);

        setState(() {
          userName = querySnapshot.data()["firstName"] +" " + querySnapshot.data()["lastName"];
        });
        // querySnapshot.forEach((element){
        //   itemList.add(element.data);
        // });
      });
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  // Future getUserProfile () async {
  //   // final DocumentReference document =   FirebaseFirestore.instance.collection("button").doc('123');
  //   // await document.get().then<dynamic>(( DocumentSnapshot snapshot) async{
  //   //   setState(() {
  //   //     data =snapshot.data;
  //   //   });
  //   // });
  //   List itemList =[];
  //   String name;
  //   try{
  //     await myCollection.get().then((querySnapshot) {
  //       querySnapshot.docs.forEach((element){
  //         itemList.add(element.data);
  //       });
  //     });
  //   }
  //   catch(e){
  //     print(e.toString());
  //     return null;
  //   }
  // }
  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
  }
  String userProfileList;
  fetchDatabaseList() async{
    dynamic resultant = await getUserProfile();
    print(resultant);
    if(resultant == null){
      print(userProfileList);
    }else {
      print(resultant);
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //final documents = streamSnapshot.data.docs;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Profile",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      )
                    ],
                  ),

                  SizedBox(height: 10,),
                  profile_picture(),
                  //SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(userName),

                    ],
                  ),
                 // SizedBox(height: 10,),
                  FlatButton(
                    height: 8,
                    child: Text("Edit Profile",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                    ),),
                    onPressed: (){
                      // FirebaseFirestore.instance.
                      // collection('button/kuIUlGlikcZFpz7MaSzg/texthere').add({'text': 'Ali Ahmad'}
                      // //snapshots().listen((data) {print(data.docs[0]['text']);}
                      // )
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return editProfile();
                          },
                        ),
                      );
                      },
                  ),
                  SizedBox(height: 20,),
                  profile_menu(icon: 'assets/icons/Bell.svg',
                  text: "Notification",
                  press: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return notification();
                          },
                        ),
                      );
                  },  //jghdfjg
                  ),
                  // profile_menu(icon: 'assets/icons/payIcon.svg',
                  //   text: "Payments",
                  //   press: (){
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) {
                  //           return payment();
                  //         },
                  //       ),
                  //     );
                  //   },
                  // ),
                  profile_menu(icon: 'assets/icons/myOrder.svg',
                    text: "My Order",
                    press: (){},
                  ),
                  profile_menu(icon: 'assets/icons/setting.svg',
                    text: "Setting Account",
                    press: (){},
                  ),
                  profile_menu(icon: 'assets/icons/about.svg',
                    text: "About App",
                    press: (){},
                  ),
                  profile_menu(icon: 'assets/icons/about.svg',
                    text: "Logout",
                    press: (){
                    FirebaseAuth.instance.signOut();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return welcome();
                        },
                      ),
                    );
                    },
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}


// class profile_menu extends StatelessWidget {
//   const profile_menu({
//     Key key, this.text, this.icon, this.press,
//   }) : super(key: key);
//
//   final String text, icon;
//
//   final VoidCallback press;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//       child: FlatButton(onPressed: press,
//           padding: EdgeInsets.all(20),
//           color: Color(0xFFF5F6F9),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Row(
//             children: [
//               SvgPicture.asset(icon,
//               color: Colors.redAccent,),
//               SizedBox(width: 20,),
//               Expanded(child: Text(text,
//                 style: TextStyle(
//                   color: Colors.black
//                 ),
//               ),
//               ),
//               Icon(Icons.arrow_forward_ios)
//             ],
//           )),
//     );
//   }
// }


