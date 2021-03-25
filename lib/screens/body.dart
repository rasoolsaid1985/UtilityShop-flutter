import 'package:flutter/material.dart';
import 'package:utility_shop/constants.dart';
import 'package:utility_shop/model/Rounder_Button.dart';
import 'package:utility_shop/screens/Signup/signup.dart';
import 'package:utility_shop/screens/background.dart';
import 'file:///D:/Programs/utility_shop/lib/screens/Login/login.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   //will provide us all length
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Welcome to worlds biggest chain of stores',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.5),),

          Image.asset('assets/icons/usc.jpg',
          height: size.height * 0.4,
          ),
          SizedBox(height: size.height*0.03),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                return LoginScreen();
              },
                ),
              );
            },
          ),
            //SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: 'SIGN UP',
              color: login_textField,
              textColor: Colors.white,
              press: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Signup();
              },
              ),
              );
              },
            ),
          ],
        ),
      )
      );
  }
}




