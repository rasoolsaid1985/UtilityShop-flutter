import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utility_shop/screens/profile/profile_body.dart';


class editProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    minWidth: 2,
                    child: Icon(FontAwesomeIcons.arrowLeft,),
                      onPressed: (){
                        Navigator.of(context).pop(true);
                      },
                      //SizedBox(width: 120,),
                  ),
                ],
              ),
            SizedBox(height: 10),
            SizedBox(
              height: 115,
              width: 115,
              //height: size.height*0.25,
              //width: size.width*0.25,
              child: Stack(
                fit: StackFit.expand,
                overflow: Overflow.visible,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/slider (2).png'),
                  ),
                  Positioned(
                    right: 6,
                    bottom: -15,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.black)
                        ),
                        color: Colors.white,
                        onPressed: () {},
                        child: Icon(FontAwesomeIcons.plus,
                          color: Colors.grey,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [Text("Name",
                  style: TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold
                  ),)],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                child:
                  TextField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                    ),
                  )
              ),
               SizedBox(height: 20,),
              Container(
                  padding: EdgeInsets.all(10),
                  child:
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Last Name",
                    ),
                  )

              ),
              // SizedBox(height: 10,),
              // Row(
              //   children: [
              //     TextFormField(
              //       decoration: InputDecoration(
              //         labelText: "Last Name",
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
