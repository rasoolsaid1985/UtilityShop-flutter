import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utility_shop/constants.dart';
import 'package:utility_shop/model/Already_have_acccount_check.dart';
import 'package:utility_shop/model/Rounder_Button.dart';
import 'package:utility_shop/screens/Login/Background.dart';
import 'package:utility_shop/screens/Login/rounded_InputField.dart';
import 'package:utility_shop/screens/Login/rounded_passwordfield.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';
import 'package:utility_shop/screens/Signup/signup.dart';
import 'package:utility_shop/screens/forgotPassword.dart';
import 'package:utility_shop/screens/home.dart';
class Body extends StatefulWidget {

  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

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

  Future<String> _loginAccount () async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _loginEmail, password: _loginPassword
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
      _loginformLoading= true;
    });
    String _loginFeedback = await _loginAccount();
    if(_loginFeedback != null) {
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
  bool _loginformLoading=false;
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
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
          )
          ],
  ),
      ),
    );
  }
}









