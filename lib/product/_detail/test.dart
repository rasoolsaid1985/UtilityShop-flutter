import 'package:flutter/material.dart';

class GheeRow extends StatelessWidget {
  String ImgURL;
  String nameText;
  String amountText;
  String weight;
  GheeRow({
    Key key,this.ImgURL,this.nameText,this.amountText,this.weight
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    Image.network(ImgURL,
                        height: size.height * 0.20),
//SizedBox(height: 15,),

                    Text(nameText, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                      textAlign: TextAlign.left,),
//SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rs. " + amountText +
                            " (" + weight + ")",
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
            ]
        )
    );
  }
}
