import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:supersell/main.dart';
import 'package:supersell/Register/supersell2.dart';
import 'package:supersell/login/supersell3.dart';
class Homescreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle:true ,
            title:Text(
            "Super Sell",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
             fontStyle: FontStyle.italic,
            ),
              ),
         backgroundColor:Colors.indigo,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
            Image.asset(
                 "lib/M.jpg",
                fit: BoxFit.cover,
                  width: MediaQuery.of(
                    context
                  ).size.width              ,
                 height:300
                 ),
            Column (
           children: [
             SizedBox(height:200 ,) ,
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
           ) ,
             SizedBox( height: 150.0 ,) ,
             Container(
                 child: Container(
                   width: double.infinity,
        
                   child:ElevatedButton(
                   onPressed: (){
                     Get.to(()=>SuperSell3());
                   } ,
                    child :
                       Text(
                         "Log in".tr,
                       style: TextStyle(
                       fontStyle: FontStyle.italic,
                         fontSize: 25,
                         height: 1,
                         color: Colors.white,
                         )
                   ),
                    style:ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(100, 5, 100, 5)),
                  shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                   //side: BorderSide(width: 2),
                   ),
                 ),
                 backgroundColor: MaterialStateProperty.all(Colors.blue[400]),
                ), 
                   ),
                 )
             ),
             SizedBox( height: 52.0 ,) ,
             Container(
                 child: Container(
                   padding :EdgeInsets.symmetric(vertical: 10.0) ,
                   width: double.maxFinite,
        
                   child: ElevatedButton(
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)
                       {
                           return SuperSell();
                       }
                       ),
                       );
                     } ,
                     child :Text(
                       "Sign up".tr,
                       style: TextStyle(
                         fontSize: 25,
                         fontStyle: FontStyle.italic,
                         height: 1,
                         color: Colors.white,
                         )
                   ),
                    style:ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(100, 5, 100, 5)),
                  shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                   //side: BorderSide(width: 2),
                   ),
                 ),
                 backgroundColor: MaterialStateProperty.all(Colors.blue[400]),
                ),
                   ),
                   )
             ),
              Image.asset(
                   "lib/A.png",
                   //alignment: Alignment.bottomCenter,
                   width: MediaQuery.of(
                     context
                     ).size.width,
                     height: 280,
                 ),
           ],
            
            ),
            ],),
        ),
    );
  } }



