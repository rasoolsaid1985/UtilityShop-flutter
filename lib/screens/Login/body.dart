import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:utility_shop/constants.dart';
import 'package:utility_shop/model/Already_have_acccount_check.dart';
import 'package:utility_shop/model/Rounder_Button.dart';
import 'package:utility_shop/screens/Login/Background.dart';
import 'package:utility_shop/screens/Login/rounded_InputField.dart';
import 'package:utility_shop/screens/Login/rounded_passwordfield.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';
import 'package:utility_shop/screens/Signup/or_Divider.dart';
import 'package:utility_shop/screens/Signup/signup.dart';
import 'package:utility_shop/screens/Signup/social_icon.dart';
import 'package:utility_shop/screens/forgotPassword.dart';
import 'file:///D:/Programs/utility_shop/lib/screens/home/home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;
class Body extends StatefulWidget {

  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool signupLoading = false;
  String signupEmail = "";
  String signupassword = "";
  bool _isLoggedIn = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  Future<void> alertDialogBuilder(String error) async {
    return showDialog(context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Error"),
            content: Container(
              child: Text(error),
            ),
            actions: [
              FlatButton(child: Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],

          );
        }

    );
  }

  Future<String> _loginAccount() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _loginEmail, password: _loginPassword
      );
      return null;
    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  void _submitform() async {
    setState(() {
      _loginformLoading = true;
    });
    String _loginFeedback = await _loginAccount();
    if (_loginFeedback != null) {
      alertDialogBuilder(_loginFeedback);
      setState(() {
        _loginformLoading = false;
      });
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      },
      ),
      );
    }
  }

  FocusNode passwordfocusNode;
  bool _loginformLoading = false;
  String _loginEmail;
  String _loginPassword;

  @override
  void initState() {
    // TODO: implement initState
    passwordfocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    passwordfocusNode.dispose();
    super.dispose();
  }

  // _loginWithGoogle() async{
  //   await Future.delayed(Duration(seconds: 3));
  //   try{
  //     await _googleSignIn.signIn();
  //     setState(() {
  //       _loginformLoading= true;
  //     });
  //   }
  //   catch(err){
  //     print(err);
  //   }
  // }


  _loginWithFB() async {
    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        var url = Uri.parse(
            "https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}");
        final graphResponse = await http.get(url);
        final profile = JSON.jsonDecode(graphResponse.body);
        print(profile);
        setState(() {
          _loginformLoading = true;
        });
        String _loginFeedback = await _loginAccount();
        if (_loginFeedback != null) {
          alertDialogBuilder(_loginFeedback);
          setState(() {
            _loginformLoading = false;
          });
        } else {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomePage();
          },
          ),
          );
        }
        break;

      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedIn = false);
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedIn = false);
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset("assets/icons/usc_login.jpg",
              //height: size.height * 0.5,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                _loginEmail = value;
              },
            ),
            Rounded_Passwordfield(onChanged: (value) {
              _loginPassword = value;
            },),
            Container(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ForgotPassword();
                  },
                  ),
                  );
                },
                child: Text('Forgot Password',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            RoundedButton(text: "LOGIN",
              press: () {
                _submitform();
              },
              isloading: _loginformLoading,
            ),
            //SizedBox(height: size.height * 0.03),
            AlreadyHaveAccount(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Signup();
                },
                ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcons(
                  iconsrc: "assets/icons/facebook.svg",
                  press: () {
                    _loginWithFB();
                  },
                ),
                SocialIcons(
                  iconsrc: "assets/icons/google-plus.svg",
                  press: () {
                    signInWithGoogle();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      UserCredential authResult =
      await FirebaseAuth.instance.signInWithCredential(credential);
      User currentUser = auth.currentUser;
      print(currentUser.uid);
      return currentUser;
    } else {
      print("Sign In Failed");
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      },
      ),
      );
    }
  }
}









