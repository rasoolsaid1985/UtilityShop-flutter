import 'package:flutter/material.dart';

class types extends StatelessWidget {
  const types({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(size.width*0.01, 0, size.width*0.01, 0),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset('assets/images/slider.png',
              //height: size.height*0.50,
              width: size.width*0.48,),
          ),
          SizedBox(width: size.width*0.02),
          InkWell(
            onTap: () {},
            child: Image.asset('assets/images/slider.png',
              //height: size.height*0.50,
              width: size.width*0.48,),
          ),
        ],
      ),
    );
  }
}
class types2 extends StatelessWidget {
  const types2({
    Key key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(size.width*0.01, 0, size.width*0.01, 0),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset('assets/images/slider.png',
              //height: size.height*0.50,
              width: size.width*0.48,),
          ),
          SizedBox(width: size.width*0.02),
          InkWell(
            onTap: () {},
            child: Image.asset('assets/images/slider.png',
              //height: size.height*0.50,
              width: size.width*0.48,),
          ),
        ],
      ),
    );
  }
}