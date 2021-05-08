import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///D:/Programs/utility_shop/lib/screens/payment/credit_card.dart';
import 'package:utility_shop/screens/profile/edit_profile.dart';
class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  final tabs =[
    Center(child: Text('Cart'),),
    Center(child: Text('Cart'),),
    Center(child: Text('Cart'),),
    Center(child: Text('Cart'),),

  ];
  final paymentLabel = [
    'Credit Card',
    'EasyPaisa',
    'JazzCash',
    'Cash on delivery'
  ];

  final paymentIcons = [
    Icons.credit_card,
    Icons.account_balance_wallet,
    Icons.payment,
    Icons.money_off,
  ];
  int value = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Choose Payment Method",
          style: TextStyle(
              color: Colors.black
          ),),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: [
            Expanded(
              child:
                    Column(
                      children: [
                        // ListTile(
                        //   leading: Radio(
                        //     groupValue: value,
                        //     onChanged: (i) => setState((){   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) {
                        //           return creditCard();
                        //         },
                        //       ),
                        //     );
                        //     }
                        //     ),
                        //   ),
                        //   title: Text("Credit Card", style: TextStyle(
                        //       color: Colors.black
                        //   ),),
                        //   trailing: Icon(Icons.credit_card,
                        //     color: Colors.black,),
                        // ),
                        SizedBox(height: 15,),
                        ListTile(
                          leading: Radio(
                            groupValue: value,
                            onChanged: (i) => setState((){   Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return editProfile();
                                },
                              ),
                            );
                            }
                            ),
                          ),
                          title: Text("Easy Paisa", style: TextStyle(
                              color: Colors.black
                          ),),
                          trailing: Icon(Icons.account_balance_wallet,
                            color: Colors.black,),
                        ),
                        SizedBox(height: 15,),
                        ListTile(
                          leading: Radio(
                            groupValue: value,
                            onChanged: (i) => setState((){   Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return editProfile();
                                },
                              ),
                            );
                            }
                            ),
                          ),
                          title: Text("Jazz Cash", style: TextStyle(
                              color: Colors.black
                          ),),
                          trailing: Icon(Icons.payment,
                            color: Colors.black,),
                        ),
                        SizedBox(height: 15,),
                        ListTile(
                          leading: Radio(
                            groupValue: value,
                            onChanged: (i) => setState((){   Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return editProfile();
                                },
                              ),
                            );
                            }
                            ),
                          ),
                          title: Text("Cash on Delivery", style: TextStyle(
                              color: Colors.black
                          ),),
                          trailing: Icon(Icons.money_off,
                            color: Colors.black,),
                        ),


                      ]
                    ),
    ),

            Container(
              width: size.width*1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(onPressed: () {

                },
                child: Text('Pay',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
                ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.redAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}