import 'package:flutter/material.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';

import '../../constants.dart';
class Rounded_Passwordfield extends StatelessWidget {
  //final ValueChanged<String> onChanged;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmit;
  final IconData icon;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  const Rounded_Passwordfield({
    Key key,
    this.onChanged, this.hintText, this.onFieldSubmit, this.icon, this.focusNode, this.textInputAction,
  }) : super(key: key);
  String validate (value) {
      if(value.isEmpty) {
        return "Required";
      } else if (value.length < 6){
        return "Atleast of 6 characters";
      }else if (value.length > 15){
        return "Not greater than 15";
      } else {
        return null;
      }
  }
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        focusNode: focusNode,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmit,
       textInputAction: textInputAction,
       autovalidate: true,
        obscureText: true,
        validator: validate,
        //onChanged: validator,
        decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none
        ),
      ),
    );
  }
}