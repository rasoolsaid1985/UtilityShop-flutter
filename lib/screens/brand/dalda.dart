import 'package:flutter/material.dart';
import 'package:utility_shop/model/Rounder_Button.dart';
import 'package:url_launcher/url_launcher.dart';

class daldaBrand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData( color: Colors.black),
        title: Text('Dalda',style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/images/dalda logo.jpg"),
            ),
            SizedBox(height: 10),
            Divider(height: 5,),
            SizedBox(height: 10),
            Container(
              child: Text('A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. ... Paragraphs can contain many different kinds of information.', style:
                TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
