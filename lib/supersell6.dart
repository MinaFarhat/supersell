import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supersell/supersell7.dart';
class SuperSell6 extends StatefulWidget{
  const SuperSell6({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>_SuperSell6Satate();
}
class _SuperSell6Satate extends State <SuperSell6>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
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
        floatingActionButton:FloatingActionButton(
          
          child: Icon(
            Icons.add_circle,
            size: 40,
            ),
            backgroundColor: Colors.blue,
          onPressed: (){
            Get.to(Supersell7());
          },
        ) ,
        body:Container (
                 height: double.infinity,
             decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage("lib/M3.jpg"),
              fit: BoxFit.cover,
               )
          ),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  
                
                    
                ),
              ),
                
              ),
            ),
     );
  }

}