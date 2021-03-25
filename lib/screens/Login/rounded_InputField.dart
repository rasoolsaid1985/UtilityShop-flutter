import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';

import '../../constants.dart';
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmit;
  final IconData icon;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  //final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged, this.onFieldSubmit, this.focusNode, this.textInputAction,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        focusNode: focusNode,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmit,
        textInputAction: textInputAction,
        autovalidate: true,
        validator: MultiValidator(
            [
              RequiredValidator(errorText: "Required *"),
              EmailValidator(errorText: "Not a valid Email")
            ]
        ),
        decoration: InputDecoration(

          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
        ),
      ),
    );

  }
}