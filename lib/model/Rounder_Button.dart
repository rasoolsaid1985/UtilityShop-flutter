import 'package:flutter/material.dart';
import 'package:utility_shop/constants.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final bool isloading;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white, this.isloading,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    bool isLoading = isloading ?? false;
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: kPrimaryColor,
          onPressed: press,
          child:
          Stack(
            children: [
              Visibility(
                visible: isLoading ? false : true,
                child: Text(text,
                  style: TextStyle(color: textColor),),
              ),
              Visibility(
                visible: isLoading,
                child: SizedBox(
                  child: CircularProgressIndicator(),
                  height: 30.0,
                  width: 30.0
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}