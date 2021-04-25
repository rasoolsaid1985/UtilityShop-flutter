import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData( color: Colors. black),
          backgroundColor: Colors.white,
          title: Container(
           alignment: Alignment.center,
            child: Text("Notification",
            style: TextStyle(
              color: Colors.black
            ),),
          ),
          actions: [
            //IconButton(icon: Icon(Icons.arrow_back), onPressed: () {})
          ],
        ),
        body: Container(
          height: size.height*1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/notification.jpg"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("No Notification Yet",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    //color: Colors.
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
