import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supersell/supersell10.dart';
class Supersell9 extends StatelessWidget {
   Supersell9({ Key? key }) : super(key: key);
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
          child: SingleChildScrollView(
            child:Stack(
              children:[
                 Column(
                    children: [
                    Image(
                      width: MediaQuery.of(context).size.width,
                    image: AssetImage(
                    'lib/g2.jpg'
                    ),
                    fit: BoxFit.cover,
                    ),
                      const SizedBox(
                   height: 40,
                 ),
                 Container(
                   margin: EdgeInsets.all(8.0),
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                         borderRadius: BorderRadius.circular(50.0),
                       ),
                      labelText: "Username".tr,
                      labelStyle: TextStyle(fontSize: 25,color: Colors.black,),
                      hintText: "Enter your name",
                      hintStyle: TextStyle(fontSize: 20),
                      icon: Icon(Icons.person_outline,
                      size: 25,
                      color: Colors.green,
                      ),
                     ),
                    keyboardType: TextInputType.text,
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.all(8.0),
                   child: TextField(
                     decoration: InputDecoration(
                       prefixText: "+963  ",
                        border: OutlineInputBorder(
                         borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                         borderRadius: BorderRadius.circular(50.0),
                       ),
                      labelText: "Phone Number".tr,
                      labelStyle: TextStyle(fontSize: 25,color: Colors.black,),
                      hintText: "Enter your Phone Number",
                      hintStyle: TextStyle(fontSize: 20,),
                      icon: Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.green,
                      ),
                     ),
                    keyboardType: TextInputType.number,
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.all(8.0),
                   child: ElevatedButton.icon(
                     icon: Icon(
                       Icons.library_add_check_outlined,
                       size: 30,
                       color: Colors.green,
                     ),
                     label: Text(
                      "Check".tr,
                     style: TextStyle(
                      fontSize: 25,
                      height: 1,
                      fontStyle:FontStyle.italic,
                      color: Colors.green,
                      ),
                     ),
                     onPressed: (){
                     Get.to(()=>Supersell10());
                     },
                     style:ButtonStyle(
                       padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(100, 5, 100, 5)),
                       shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        //side: BorderSide(width: 2),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                     ),
                   ),
                 ),
                 Image(
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(
                    'lib/g1.png'
                    ),
                    fit: BoxFit.cover,
                 ),
                               
                             ],
                             ),
              ],
            ),
          ),
        ),
    );
  }
}