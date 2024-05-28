import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supersell/Register/supersell2.dart';
import 'package:supersell/login/supersell3.dart';

class Supersell10 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Supersell10State();
  
}
class _Supersell10State extends State<Supersell10>{
  bool passwordvisibilty=true;
  bool passwordvisibilty1=true;
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
                      labelText: "Password".tr,
                      labelStyle: TextStyle(fontSize: 25,color: Colors.black,),
                      hintText: "Enter new your password",
                      hintStyle: TextStyle(fontSize: 20),
                      suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          passwordvisibilty=!passwordvisibilty;
                        });
                      },
                      icon: Icon(
                      passwordvisibilty?Icons.visibility:Icons.visibility_off,
                      size: 25,
                      color: Colors.green,
                      ),
                      )
                     ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordvisibilty,
                   ),
                 ),
                               Container(
                   margin: EdgeInsets.all(8.0),
                   child: TextField(
                     decoration: InputDecoration(
                        border: OutlineInputBorder(
                         borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                         borderRadius: BorderRadius.circular(50.0),
                       ),
                      labelText: "confirm Password".tr,
                      labelStyle: TextStyle(fontSize: 25,color: Colors.black,),
                      hintText: "Enter your new password again",
                      hintStyle: TextStyle(fontSize: 20),
                      suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          passwordvisibilty1=!passwordvisibilty1;
                        });
                      },
                      icon: Icon(
                      passwordvisibilty1?Icons.visibility:Icons.visibility_off,
                      size: 25,
                      color: Colors.green,
                      ),
                      )
                     ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordvisibilty1,
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.all(8.0),
                   child: ElevatedButton.icon(
                     icon: Icon(
                       Icons.edit,
                       size: 30,
                       color: Colors.green,
                     ),
                     label: Text(
                      "Edit".tr,
                     style: TextStyle(
                      fontSize: 25,
                      height: 1,
                      fontStyle:FontStyle.italic,
                      color: Colors.green,
                      ),
                     ),
                     onPressed: (){
                     Get.offAll(()=>SuperSell3());
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