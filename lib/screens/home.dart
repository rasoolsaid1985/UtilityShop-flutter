import 'package:firebase_auth/firebase_auth.dart';
import 'package:utility_shop/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          //this button will you
          child: Text("LOGOUT"),
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
        )
      ),
    );
  }
}
