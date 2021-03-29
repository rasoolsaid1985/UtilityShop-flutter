import 'package:firebase_auth/firebase_auth.dart';
import 'package:utility_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:utility_shop/screens/home/Home_Body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Home_Body(),
      ),
    );
  }
}


