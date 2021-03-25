import 'package:flutter/material.dart';

class background extends StatelessWidget {
  final Widget child;
  const background({
    Key key,
    @required this.child,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png"),
            width: size.width * 0.3,
          ),
          Positioned(child: Image.asset("assets/images/main_bottom.png"),
            width: size.width * 0.3,
            bottom: 0,
            left: 0,),
          child,
        ],

      ),
    );
  }
}