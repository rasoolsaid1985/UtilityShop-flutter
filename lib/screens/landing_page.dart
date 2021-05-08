import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:utility_shop/constants.dart';
import 'file:///D:/Programs/utility_shop/lib/screens/home/home.dart';
import 'file:///D:/Programs/utility_shop/lib/screens/Login/login.dart';
import 'package:utility_shop/screens/welcome.dart';

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        //if error in firebase authentiation
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Error: ${snapshot.error}"),
            ),
          );
        }

        //when connection is established successfully
        if (snapshot.connectionState == ConnectionState.done) {
          //to check the login live
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, streamsnapshot) {
            if (streamsnapshot.hasError) {
              return Scaffold(
                body: Center(
                  child: Text("Error: ${streamsnapshot.error}"),
                ),
              );
            }
            //connection state active, do the user login check
            if(streamsnapshot.connectionState == ConnectionState.active){
              User _user = streamsnapshot.data;

              //if the user is null
              if(_user == null){
                // if user is null then return to login page
                return welcome();
              }else{
                //if the user is logged in, return to homepage
                return HomePage();
              }
            }
            // for checking authentication
            return Scaffold(
              body: Center(
                child: Text(
                  "Checking Authentication ...",
                  style: constants.regularHeading,),
              ),
            );
          },);
        }

        //connection to firebase- loading
        return Scaffold(
          body: Center(
            child: Text(
              "App Initializing ...",
              style: constants.regularHeading,),
          ),
        );
      },
    );
  }
  // Future logout() async {
  //   try{
  //     return await _initialization.welcome();
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }
}
