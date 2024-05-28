import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Supersell8 extends StatelessWidget {
  const Supersell8({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      centerTitle: true,
       title: Text(
        "Super Sell",
        style: TextStyle(color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
        ),
        ),
        backgroundColor:Colors.indigo,
    ),
    body: Container(
      color: Colors.blue.shade200,
      child: Center(
        child: Column(
          children:[
             Container(
               padding: EdgeInsets.symmetric(vertical: 15),
               child: Text(
            "We are just a team of students who did this app for our unviersity and we wish to like it and support us to do more...",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
            ),
          ),
             ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 200,horizontal: 20),
            child: Text(
              "Thank you for using our app",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              ),
          )
          ],
        ),
      ),
    ),
    );
  }
}