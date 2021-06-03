import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utility_shop/cart/cart_screen.dart';
import 'package:utility_shop/provider/dalda_notifier.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {

  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8"
  ];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    daldaNotifier daldanotifier = Provider.of<daldaNotifier>(context);
    Size size = MediaQuery.of(context).size;

    final headerList = new
    ListView.builder(
      // shrinkWrap: true,
        itemCount: daldanotifier.daldaList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                Container(
                  height: 250,
                  padding: EdgeInsets.only(left: 4, top: 8),
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(daldanotifier.daldaList[index].image,
                          height: size.height*0.20),
                      //SizedBox(height: 15,),

                      Text(daldanotifier.daldaList[index].name,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                        textAlign: TextAlign.left,),
                      //SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rs. " + daldanotifier.daldaList[index].amount + " (" + daldanotifier.daldaList[index].weight+ ")",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: IconButton(
                                icon: Icon(Icons.add_shopping_cart),
                                onPressed: () {
                                  daldanotifier.currentDalda = daldanotifier.daldaList[index];
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (BuildContext context){
                                        return CartPage();
                                      })
                                  );
                                }),
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ]
          );
        }
    );

    final body = new Scaffold(
      appBar: new AppBar(
        title: new Text("Dalda"),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      backgroundColor: Colors.transparent,
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Align(
                    alignment: Alignment.centerLeft,
                    child: new Padding(
                        padding: new EdgeInsets.only(left: 8.0),
                        child: new Text(
                          'Recent Items',
                          style: new TextStyle(color: Colors.white70),
                        )),
                  ),
                  new Container(
                      height: 300.0, width: _width, child: ListView.builder(
                    // shrinkWrap: true,
                      itemCount: daldanotifier.daldaList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:   [
                              Container(
                                height: 250,
                                padding: EdgeInsets.only(left: 4, top: 8),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(daldanotifier.daldaList[index].image,
                                        height: size.height*0.20),
                                    //SizedBox(height: 15,),

                                    Text(daldanotifier.daldaList[index].name,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                      textAlign: TextAlign.left,),
                                    //SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Rs. " + daldanotifier.daldaList[index].amount + " (" + daldanotifier.daldaList[index].weight+ ")",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 18.0),
                                          child: IconButton(
                                              icon: Icon(Icons.add_shopping_cart),
                                              onPressed: () {
                                                daldanotifier.currentDalda = daldanotifier.daldaList[index];
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(builder: (BuildContext context){
                                                      return CartPage();
                                                    })
                                                );
                                              }),
                                        )
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ]
                        );
                      }
                  )),
                  new Expanded(child:
                  ListView.builder(
                    // shrinkWrap: true,
                      itemCount: daldanotifier.daldaList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:   [
                              Container(
                                height: 250,
                                padding: EdgeInsets.only(left: 4, top: 8),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(daldanotifier.daldaList[index].image,
                                        height: size.height*0.20),
                                    //SizedBox(height: 15,),

                                    Text(daldanotifier.daldaList[index].name,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                      textAlign: TextAlign.left,),
                                    //SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Rs. " + daldanotifier.daldaList[index].amount + " (" + daldanotifier.daldaList[index].weight+ ")",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 18.0),
                                          child: IconButton(
                                              icon: Icon(Icons.add_shopping_cart),
                                              onPressed: () {
                                                daldanotifier.currentDalda = daldanotifier.daldaList[index];
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(builder: (BuildContext context){
                                                      return CartPage();
                                                    })
                                                );
                                              }),
                                        )
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ]
                        );
                      }
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return new Container(
      decoration: new BoxDecoration(
        color: const Color(0xFF273A48),
      ),
      child: new Stack(
        children: <Widget>[

          body,
        ],
      ),
    );
  }
}