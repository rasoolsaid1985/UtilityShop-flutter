import 'package:flutter/material.dart';
import 'package:utility_shop/screens/Login/textField_Container.dart';
import 'package:utility_shop/screens/Signup/background.dart';
import 'package:utility_shop/screens/brand/dalda.dart';
import 'package:utility_shop/screens/brand/pepsi.dart';
import 'package:utility_shop/screens/brand/unilever.dart';

import 'milkpak.dart';

class brand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Category Brands",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(height: 10, thickness: 5,),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4, right: 4),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return daldaBrand();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                    height: size.height*0.25,
                                    width: size.width*0.97,
                                    //child: Image.network("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                    child: Image.asset("assets/images/dalda logo.jpg"),
                                ),
                              ),
                            )],
                        ),
                        SizedBox(height: 10,),
                        Divider(height: 10, thickness: 5,),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4, right: 4),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return unileverBrand();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                    height: size.height*0.25,
                                    width: size.width*0.97,
                                    //child: Image.network("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                  child: Image.asset("assets/images/unilever.png"),
                                ),
                              ),
                            )],
                        ),
                        SizedBox(height: 10,),
                        Divider(height: 10, thickness: 5,),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4, right: 4),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return milkpakBrand();
                                      },
                                    ),
                                  );
                                },
                                child: Container(

                                    height: size.height*0.25,
                                    width: size.width*0.97,
                                    //child: Image.network("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                  child: Image.asset('assets/images/milkpak.jpg'),
                                    
                                ),
                              ),
                            )],
                        ),
                        SizedBox(height: 10,),
                        Divider(height: 10, thickness: 5,),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4, right: 4),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return pepsiBrand();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                    height: size.height*0.25,
                                    width: size.width*0.97,
                                    //child: Image.network("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                  //child: Image.network("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                  child: Image.asset("assets/images/pepsi.jpg"),
                                )
                                ),
                              ),
                            ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(height: 10,),
                        Divider(height: 10, thickness: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4, right: 4),
                              child: InkWell(
                                onTap: () {
                                  print("afjgf");
                                },
                                child: Container(
                                    height: size.height*0.25,
                                    width: size.width*0.97,
                                    //child: Image.network("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                      ),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    )
                                ),
                              ),
                            )],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(height: 10,),
                        Divider(height: 10, thickness: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4, right: 4),
                              child: InkWell(
                                onTap: () {
                                  print("afjgf");
                                },
                                child: Container(
                                    height: size.height*0.25,
                                    width: size.width*0.97,
                                    //child: Image.network("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://github.com/rasoolsaid1985/UtilityShop-flutter/blob/main/assets/images/slider%20(2).png?raw=true"),
                                      ),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    )
                                ),
                              ),
                            )],
                        ),
                        SizedBox(height: 10,),
                        Divider(height: 10, thickness: 5,),
                        SizedBox(height: 10,),
                      ],
                    ),
            ),
          ),
      ),
      );
  }
}
