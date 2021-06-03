import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ghee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Branded Ghee', style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Dalda Ghee",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 4, top: 8),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/dalda.jpg",
                              height: size.height*0.20),
                          //SizedBox(height: 15,),

                          Text("Dalda Banaspati",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                            textAlign: TextAlign.left,),
                          //SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rs. 280 (1 KG)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          )

                        ],
                      ),
                    ),
                    SizedBox(width: size.width*0.04),
                    Container(
                      padding: EdgeInsets.only(right: 4, top: 8),
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Image.asset("assets/images/dalda5.png",
                                height: size.height*0.20),
                            onTap: () {},
                          ),
                          //SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("VTF Banaspati",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                              textAlign: TextAlign.left,),
                          ),
                          // SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Rs. 1400 (5 KG)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 4, top: 8),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/dalda2.jpg",
                              height: size.height*0.18),
                          SizedBox(height: 15,),
                          Text("Dalda Tin",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            //fontSize: 14,
                          ),
                            textAlign: TextAlign.left,),
                          // SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rs. 700 (2.5 KG)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          // Text(
                          //   "In Stock",
                          //   style: TextStyle(
                          //     color: Colors.green
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Maan Ghee",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 4, top: 8),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Image.asset("assets/images/manpasand.jpg",
                                height: size.height*0.20),
                          ),
                          //SizedBox(height: 15,),
                          Text("Manpasand Banaspati",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                            textAlign: TextAlign.left,),
                          //SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rs. 170 (1 KG)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: size.width*0.04),
                    Container(
                      padding: EdgeInsets.only(right: 4, top: 8),
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/manpasand5.jpg",
                              height: size.height*0.20),
                          //SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("VTF Banaspati",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                              textAlign: TextAlign.left,),
                          ),
                          // SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Rs. 950 (5 KG)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 4, top: 8),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/manpasand 2.jpg",
                              height: size.height*0.20),
                          //SizedBox(height: 8,),
                          Text("Manpand Tin",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                            textAlign: TextAlign.left,),
                          // SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rs. 435 (2.5 KG)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Dastak Ghee",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 4, top: 8),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/dastak.jpg",
                              height: size.height*0.20),
                          //SizedBox(height: 15,),
                          Text("Dastak Ghee",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                            textAlign: TextAlign.left,),
                          //SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rs. 170 (1 KG)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: size.width*0.04),
                    Container(
                      padding: EdgeInsets.only(right: 4, top: 8),
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Image.asset("assets/images/dastak 5.jpg",
                                  height: size.height*0.20),
                            ),
                            onTap: () {},
                          ),
                          //SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Dastak Banaspati",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                              textAlign: TextAlign.left,),
                          ),
                          // SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Rs. 950 (5 KG)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 4, top: 8),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/dastak5.jpg",
                              height: size.height*0.20),
                          //SizedBox(height: 8,),
                          Text("Dastak Tin",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                            textAlign: TextAlign.left,),
                          // SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rs. 950 (5 KG)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                    icon: Icon(Icons.add_shopping_cart),
                                    onPressed: () {
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
