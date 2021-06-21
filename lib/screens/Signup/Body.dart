import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utility_shop/constants.dart';
import 'package:utility_shop/model/Already_have_acccount_check.dart';
import 'package:utility_shop/model/Rounder_Button.dart';
import 'package:utility_shop/screens/Login/login.dart';
import 'package:utility_shop/screens/Login/rounded_InputField.dart';
import 'package:utility_shop/screens/Login/rounded_passwordfield.dart';
import 'package:utility_shop/screens/Signup/background.dart';
import 'package:utility_shop/screens/Signup/or_Divider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:utility_shop/screens/Signup/social_icon.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;
import 'file:///D:/Programs/utility_shop/lib/screens/home/home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:utility_shop/utils/GoogleSignInButton.dart';

class Body extends StatefulWidget {
  final Widget child;

  const Body({Key key,
    @required this.child
  })
      : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String validator(value) {
    if(value.isEmpty) {
      return "required";
    }
    else{
      return null;
    }
  }


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
           FlatButton( child: Text("Close"),
             onPressed: () {
             Navigator.pop(context);
             },
           )
         ],

       );
      }

    );
  }

  Future<String> _createAccount () async {
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: signupEmail, password: signupassword
      );
      return null;
    }
    on FirebaseAuthException catch(e){
      if (e.code == 'weak-password') {
        return'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return'The account already exists for that email.';
      }
      return e.message;
    }catch (e) {
      return e.toString();
    }
    }


    void _submitform() async {
    setState(() {
      signupLoading= true;
    });
    String _createAcccountFeedback = await _createAccount();
    if(_createAcccountFeedback != null) {
      alertDialogBuilder(_createAcccountFeedback);
      setState(() {
        signupLoading = false;
      });
    } else {
      await Future.delayed(Duration(seconds: 3));
      Navigator.pop(context);
    }
    }


  bool signupLoading = false;
  String signupEmail = "";
  String signupassword = "";
  FocusNode passwordfocusNode;
  bool _isLoggedIn  = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);



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


  _loginWithFB() async{
    final result = await facebookLogin.logIn(['email']);
    await Future.delayed(Duration(seconds: 3));
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        var url = Uri.parse("https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}");
        final graphResponse = await http.get(url);
        final profile = JSON.jsonDecode(graphResponse.body);
        print(profile);
        setState(() {
          userProfile = profile;
          _isLoggedIn = true;
        });
        break;

      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedIn = false );
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedIn = false );
        break;
    }
  }

   _loginWithGoogle() async{
     //await Future.delayed(Duration(seconds: 3));
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    }
    catch(err){
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background(
      child: SingleChildScrollView(
        child: _isLoggedIn ?
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomePage();
        },
        ),
        )
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return HomePage();
        // },
        // ),
        // )
    :
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("SIGNUP",
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
          //SizedBox(height: size.height * 0.03),
          Image.asset("assets/icons/usc_login.jpg",
          height: size.height * 0.3,),
          RoundedInputField(
            //validator: EmailValidator(errorText: 'enter a valid email address')
            hintText: "Your Email",
            onChanged: (value) {
              signupEmail = value;
            },
            onFieldSubmit: (value) {
              passwordfocusNode.requestFocus();
            },
            textInputAction: TextInputAction.next,
          ),
         Rounded_Passwordfield(
           onChanged: (value) {
             signupassword = value;
           },
           focusNode: passwordfocusNode,
           onFieldSubmit: (value) {
             _submitform();
           },
         ),
          RoundedButton(
            text: "SIGNUP",
            press: (){
              _submitform();
            },
            isloading: signupLoading,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAccount(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              },
              ),
              );
            }
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
                  _loginWithGoogle();
                },
              ),
            ],
          )
        ],
    ),
      ),);
  }

}

// class Authentication {
//   static Future<User> signInWithGoogle({BuildContext context}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User user;
//
//     final GoogleSignIn googleSignIn = GoogleSignIn();
//
//     final GoogleSignInAccount googleSignInAccount =
//     await googleSignIn.signIn();
//
//     if (googleSignInAccount != null) {
//       final GoogleSignInAuthentication googleSignInAuthentication =
//       await googleSignInAccount.authentication;
//
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleSignInAuthentication.accessToken,
//         idToken: googleSignInAuthentication.idToken,
//       );
//
//       try {
//         final UserCredential userCredential =
//         await auth.signInWithCredential(credential);
//
//         user = userCredential.user;
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'account-exists-with-different-credential') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             Authentication.customSnackBar(
//               content:
//               'The account already exists with a different credential',
//             ),
//           );
//         } else if (e.code == 'invalid-credential') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             Authentication.customSnackBar(
//               content:
//               'Error occurred while accessing credentials. Try again.',
//             ),
//           );
//         }
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           Authentication.customSnackBar(
//             content: 'Error occurred using Google Sign In. Try again.',
//           ),
//         );
//       }
//
//       return user;
//     }
//   }
//
//   static SnackBar customSnackBar({String content}) {
//     return SnackBar(
//       backgroundColor: Colors.black,
//       content: Text(
//         content,
//         style: TextStyle(color: Colors.redAccent, letterSpacing: 0.5),
//       ),
//     );
//   }
// }

