import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utility_shop/screens/profile/profile_body.dart';
import 'package:utility_shop/screens/profile/task.dart';
import 'firebaseServ.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utility_shop/screens/profile/profile_body.dart';
import 'package:firebase_auth/firebase_auth.dart';

class editProfile extends StatefulWidget {
  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  final myCollection= FirebaseFirestore.instance.collection('button').doc(FirebaseAuth.instance.currentUser.uid);
  String firstName = "";
  String lastName = "";
  String name1 = "Enter Your First Name";
  String name2 = "Enter Your last Name";

  getfirstName(firstName) {
    this.firstName = firstName;
  }

  getlastName(lastName) {
    this.lastName = lastName;
  }
  Future getUserProfile () async {

    List itemList = [];
    try{
    await myCollection.get().then((querySnapshot) {
      //print(querySnapshot.data()["firstName"]);

      setState(() {
        name1 = querySnapshot.data()["firstName"];
        name2 = querySnapshot.data()["lastName"];
        print(name1);
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

  createData(){
    DocumentReference ds = FirebaseFirestore.instance.collection('button').doc(FirebaseAuth.instance.currentUser.uid);
    Map<String,dynamic> name = {
      'firstName': firstName,
      'lastName': lastName,
    };
    ds.set(name).whenComplete((){
      print('Task Created');
    });
  }

  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
  }
var userProfileList =[];
  fetchDatabaseList() async{
    dynamic resultant = await getUserProfile();

    if(resultant == null){
      print('Unable to reteive');
    }else {
      print('fetch succesfully');
    }
  }

  // String firstName;
  // String lastName;
  // TextEditingController txt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    minWidth: 2,
                    child: Icon(FontAwesomeIcons.arrowLeft,),
                    onPressed: (){
                      Navigator.of(context).pop(true);
                    },
                    //SizedBox(width: 120,),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 115,
                width: 115,
                //height: size.height*0.25,
                //width: size.width*0.25,
                child: Stack(
                  fit: StackFit.expand,
                  overflow: Overflow.visible,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/slider (2).png'),
                    ),
                    Positioned(
                      right: 6,
                      bottom: -15,
                      child: SizedBox(
                        height: 46,
                        width: 46,
                        child: FlatButton(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.black)
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          child: Icon(FontAwesomeIcons.plus,
                            color: Colors.grey,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Name",
                      style: TextStyle(
                        fontSize: 20,
                        //fontWeight: FontWeight.bold
                      ),)],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.all(10),
                  child:
                  TextField(
                    onChanged: (String firstName){
                      getfirstName(firstName);
                    },
                    decoration: InputDecoration(
                      labelText: name1,
                    ),
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  padding: EdgeInsets.all(10),
                  child:
                  TextField(
                    onChanged: (String lastName){
                      getlastName(lastName);
                    },
                    decoration: InputDecoration(
                      labelText: name2,
                    ),
                  )

              ),
              // Container(
              //   padding: EdgeInsets.all(10),
              //   child:
              //     TextField(
              //       decoration: InputDecoration(
              //         labelText: "First Name",
              //       ),
              //     )
              // ),
              //  SizedBox(height: 20,),
              // Container(
              //     padding: EdgeInsets.all(10),
              //     child:
              //     TextField(
              //       decoration: InputDecoration(
              //         labelText: "Last Name",
              //       ),
              //     )
              //
              // ),
              SizedBox(height: 10,),
              RaisedButton(
                child: Text('Save'),
                onPressed: () {
                  createData();
                  Navigator.of(context).pop();

                },
              )
              // Row(
              //   children: [
              //     TextFormField(
              //       decoration: InputDecoration(
              //         labelText: "Last Name",
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}


// class editProfile extends StatefulWidget {
//   // final task Task;
//   // editProfile(this.Task);
//   @override
//   _editProfileState createState() => _editProfileState();
// }
//
// class _editProfileState extends State<editProfile> {
//
//   String firstName;
//   String lastName;
//
//   getfirstName(firstName) {
//     this.firstName = firstName;
//   }
//
//   getlastName(lastName) {
//     this.lastName = lastName;
//
//   createData(){
//     DocumentReference ds = FirebaseFirestore.instance.collection('button').doc(firstName);
//     Map<String,dynamic> name = {
//       'firstName': firstName,
//       'lastName': lastName,
//     };
//     ds.set(name).whenComplete((){
//       print('Task Created');
//     });
//   }
//   firestoreService fireServ = new firestoreService();
//
//   TextEditingController _firstNameController;
//   TextEditingController _lastNameController;
//
//   @override
//   void initState() {
//     super.initState();
//    // _firstNameController = new TextEditingController(text: widget.Task.firstName);
//     //_lastNameController = new TextEditingController(text: widget.Task.lastName);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top: 28.0),
//         child: SingleChildScrollView(
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.start,
//             // crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   FlatButton(
//                     minWidth: 2,
//                     child: Icon(FontAwesomeIcons.arrowLeft,),
//                     onPressed: () {
//                       Navigator.of(context).pop(true);
//                     },
//                     //SizedBox(width: 120,),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               SizedBox(
//                 height: 115,
//                 width: 115,
//                 //height: size.height*0.25,
//                 //width: size.width*0.25,
//                 child: Stack(
//                   fit: StackFit.expand,
//                   overflow: Overflow.visible,
//                   children: [
//                     CircleAvatar(
//                       backgroundImage: AssetImage(
//                           'assets/images/slider (2).png'),
//                     ),
//                     Positioned(
//                       right: 6,
//                       bottom: -15,
//                       child: SizedBox(
//                         height: 46,
//                         width: 46,
//                         child: FlatButton(
//                           padding: EdgeInsets.zero,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               side: BorderSide(color: Colors.black)
//                           ),
//                           color: Colors.white,
//                           onPressed: () {},
//                           child: Icon(FontAwesomeIcons.plus,
//                             color: Colors.grey,),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [Text("Name",
//                     style: TextStyle(
//                       fontSize: 20,
//                       //fontWeight: FontWeight.bold
//                     ),)
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child:
//                 TextField(
//                   //controller: _firstNameController,
//                   // onChanged: (String firstName){
//                   //   getfirstName(firstName);
//                   // },
//                   decoration: InputDecoration(
//                     labelText: "First Name",
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child:
//                 TextField(
//                   // controller: _lastNameController,
//                   // onChanged: (String lastName){
//                   //   getlastName(lastName);
//                   // },
//                   decoration: InputDecoration(
//                     labelText: "Last Name",
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               RaisedButton(
//                 child: Text('Save'),
//                 onPressed: () {
//                   //               fireServ.createToDOtask(_firstNameController.text, _lastNameController.text).then((_){
//                   //                 Navigator.of(context).pop(context);
//                   // });
//                   // // createData().then((_){
//                   Navigator.of(context).pop();
//                 },
//               ),
//               // SizedBox(height: 10,),
//               // Row(
//               //   children: [
//               //     TextFormField(
//               //       decoration: InputDecoration(
//               //         labelText: "Last Name",
//               //       ),
//               //     )
//               //   ],
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
