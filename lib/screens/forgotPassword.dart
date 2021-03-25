import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utility_shop/screens/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utility_shop/screens/Signup/signup.dart';
import 'package:utility_shop/screens/confirmEmail.dart';

class ForgotPassword extends StatefulWidget {
  static String id = 'forgot-password';
  final String message =
      "An email has just been sent to you, Click the link provided to complete password reset";

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {


  String _email;
  final _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();


  _passwordReset() async {
    try {
      _formKey.currentState.save();
      final user = await _auth.sendPasswordResetEmail(email: _email);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return ConfirmEmail(message: widget.message,);
        }),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Reset Password',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
          SizedBox(height: size.height * 0.03),
          Image.asset("assets/icons/usc_login.jpg",),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  errorStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),

              ),

              SizedBox(height: 20),
              RaisedButton(
                child: Text('Send Email'),
                onPressed: () {
                  _auth.sendPasswordResetEmail(email: _email );
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }));
                },
              ),
              FlatButton(
                child: Text('Sign In'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Signup();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}