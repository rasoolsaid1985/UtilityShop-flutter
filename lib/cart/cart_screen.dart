import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';
import 'package:utility_shop/utils/dalda_api.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  void initState() {
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context, listen: false);
    getDalda(daldanotifier);
    print(daldanotifier.daldaList);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(top:18.0),
      child: Scaffold(
        //resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,

        appBar: AppBar(
          title: Text('Cart',
          style: TextStyle(
            color: Colors.black
          ),),
          centerTitle: true,
          iconTheme: IconThemeData( color: Colors. black),
          backgroundColor: Colors.white,
        ),

        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.red.withOpacity(0.2),
                      offset: Offset(3, 2),
                      blurRadius: 30)
                ]),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  child: Image.asset("assets/images/dalda.jpg",
                    height: 120,
                    width: 140,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(children: [

                          TextSpan(
                              text: (daldanotifier.currentDalda.name),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300)),
                          TextSpan(
                              text: daldanotifier.currentDalda.weight,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: (daldanotifier.currentDalda.amount),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ]),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: ()async{
                            // app.changeLoading();
                            // bool value = await user.removeFromCart(cartItem: user.userModel.cart[index]);
                            // if(value){
                            //   user.reloadUserModel();
                            //   print("Item added to cart");
                            //   _key.currentState.showSnackBar(
                            //       SnackBar(content: Text("Removed from Cart!"))
                            //   );
                            //   app.changeLoading();
                            //   return;
                            // }else{
                            //   print("ITEM WAS NOT REMOVED");
                            //   app.changeLoading();
                          }

                      )
                    ],
                  ),
                )
              ],
            ),
          ),
    )
      )
        );
  //       Builder(
  //         builder: (context) {
  //           return ListView(
  //             children: <Widget>[
  //               // createHeader(),
  //               // createSubTitle(),
  //               createCartList(),
  //               footer(context)
  //             ],
  //           );
  //         },
  //       ),
  //     ),
  //   );
  // }
  //
  // footer(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(top:18),
  //     child: Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         children: <Widget>[
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: <Widget>[
  //               Container(
  //                 margin: EdgeInsets.only(left: 30),
  //                 child: Text(
  //                   "Total",
  //
  //                 ),
  //               ),
  //               Container(
  //                 margin: EdgeInsets.only(right: 30),
  //                 child: Text(
  //                   "\$280.00",
  //                   style: TextStyle(
  //                       color: Colors.greenAccent.shade700, fontSize: 14),
  //                 ),
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 8),
  //           RaisedButton(
  //             onPressed: () {
  //               // Navigator.push(context,
  //               //     new MaterialPageRoute(builder: (context) => CheckOutPage()));
  //             },
  //             color: Colors.green,
  //             padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(24))),
  //             child: Text(
  //               "Checkout",
  //
  //             ),
  //           ),
  //           SizedBox(height: 8),
  //         ],
  //       ),
  //       margin: EdgeInsets.only(top: 16),
  //     ),
  //   );
  // }
  //
  // createHeader() {
  //   return Container(
  //     alignment: Alignment.topLeft,
  //     child: Text(
  //       "SHOPPING CART",
  //
  //     ),
  //     margin: EdgeInsets.only(left: 12, top: 12),
  //   );
  // }
  //
  // createSubTitle() {
  //   return Container(
  //     alignment: Alignment.topLeft,
  //     child: Text(
  //       "Total(3) Items",
  //
  //     ),
  //     margin: EdgeInsets.only(left: 12, top: 4),
  //   );
  // }
  //
  // createCartList() {
  //   return ListView.builder(
  //     shrinkWrap: true,
  //     primary: false,
  //     itemBuilder: (context, position) {
  //       return createCartListItem();
  //     },
  //     itemCount: 1,
  //   );
  // }
  //
  // createCartListItem() {
  //   daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context);
  //   return Padding(
  //     padding: const EdgeInsets.all(16),
  //     child: Container(
  //       height: 120,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(20),
  //           color: Colors.white,
  //           boxShadow: [
  //             BoxShadow(
  //                 color: Colors.red.withOpacity(0.2),
  //                 offset: Offset(3, 2),
  //                 blurRadius: 30)
  //           ]),
  //       child: Row(
  //         children: <Widget>[
  //           ClipRRect(
  //             borderRadius: BorderRadius.only(
  //               bottomLeft: Radius.circular(20),
  //               topLeft: Radius.circular(20),
  //             ),
  //             child: Image.asset("assets/images/dalda.jpg",
  //               height: 120,
  //               width: 140,
  //               fit: BoxFit.fill,
  //             ),
  //           ),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Expanded(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: <Widget>[
  //                 RichText(
  //                   text: TextSpan(children: [
  //
  //                     TextSpan(
  //                         text: (daldanotifier.currentDalda.name),
  //                         style: TextStyle(
  //                             color: Colors.black,
  //                             fontSize: 18,
  //                             fontWeight: FontWeight.w300)),
  //                     TextSpan(
  //                         text: daldanotifier.currentDalda.weight,
  //                         style: TextStyle(
  //                             color: Colors.grey,
  //                             fontSize: 16,
  //                             fontWeight: FontWeight.w400)),
  //                     TextSpan(
  //                         text: (daldanotifier.currentDalda.amount),
  //                         style: TextStyle(
  //                             color: Colors.black,
  //                             fontSize: 16,
  //                             fontWeight: FontWeight.w400)),
  //                   ]),
  //                 ),
  //                 IconButton(
  //                     icon: Icon(
  //                       Icons.delete,
  //                       color: Colors.red,
  //                     ),
  //                     onPressed: ()async{
  //                       // app.changeLoading();
  //                       // bool value = await user.removeFromCart(cartItem: user.userModel.cart[index]);
  //                       // if(value){
  //                       //   user.reloadUserModel();
  //                       //   print("Item added to cart");
  //                       //   _key.currentState.showSnackBar(
  //                       //       SnackBar(content: Text("Removed from Cart!"))
  //                       //   );
  //                       //   app.changeLoading();
  //                       //   return;
  //                       // }else{
  //                       //   print("ITEM WAS NOT REMOVED");
  //                       //   app.changeLoading();
  //                       }
  //
  //   )
  //               ],
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  }
}


