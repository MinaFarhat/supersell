import 'dart:typed_data';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:supersell/Register/register_controller.dart';
import 'package:supersell/home%20screen.dart';
import 'package:supersell/login/supersell3.dart';
import 'package:supersell/supersell4.dart';
import 'package:supersell/supersell5.dart';
class SuperSell extends StatefulWidget{
  const SuperSell({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SuperSellState();
}
class _SuperSellState extends State <SuperSell>{
  bool passwordvisibilty=true;
  get decoration => null;
  RegisterController controller =RegisterController();

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
          height: double.infinity,
         child:SingleChildScrollView(
         child: Stack(
           children: [
            Column(
             children: [
               Image(
                 image: AssetImage("lib/I.jpg",),
                 fit: BoxFit.fitHeight,
                 
                 width: MediaQuery.of(
                   context
                   ).size.width,
               ),
               const SizedBox(
                 height: 40,
               ),
               Container(
                 margin: EdgeInsets.all(8.0),
                 child: TextField(
                    onChanged:(Value) {
                     controller.username=Value;
                  } ,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText: "Username".tr,
                    labelStyle: TextStyle(fontSize: 25,color: Colors.blue[700],),
                    hintText: "Enter your name",
                    hintStyle: TextStyle(fontSize: 20),
                    icon: Icon(Icons.person_outline,
                    size: 25,
                    color: Colors.blue[400],
                    ),
                   ),
                  keyboardType: TextInputType.text,
                 ),
               ),
               Container(
                 margin: EdgeInsets.all(8.0),
                 child: TextField(
                    onChanged:(Value) {
                     controller.email=Value;
                  } ,
                   decoration: InputDecoration(
                      border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText: "E-mail".tr,
                    labelStyle: TextStyle(fontSize: 25,color: Colors.blue[700],),
                    hintText: "Enter your E-mail",
                    hintStyle: TextStyle(fontSize: 20),
                    icon: Icon(
                    Icons.alternate_email,
                    size: 25,
                    color: Colors.blue[400],
                    ),
                   ),
                  keyboardType: TextInputType.emailAddress,
                 ),
               ),
               Container(
                 margin: EdgeInsets.all(8.0),
                 child: TextField(
                    onChanged:(Value) {
                     controller.password=Value;
                  } ,
                   decoration: InputDecoration(
                      border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText: "Password".tr,
                    labelStyle: TextStyle(fontSize: 25,color: Colors.blue[700],),
                    hintText: "Enter your password",
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
                    color: Colors.blue[400],
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
                    onChanged:(Value) {
                     controller.phonenumber=Value;
                  } ,
                   decoration: InputDecoration(
                     prefixText: "+963  ",
                      border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText: "Phone Number".tr,
                    labelStyle: TextStyle(fontSize: 25,color: Colors.blue[700],),
                    hintText: "Enter your Phone Number",
                    hintStyle: TextStyle(fontSize: 20,),
                    icon: Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.blue[400],
                    ),
                   ),
                  keyboardType: TextInputType.number,
                 ),
               ),
                Container(
                  margin: EdgeInsets.all(8.0),
                 child: ElevatedButton(
                   child: Text(
                    "Sign up".tr,
                   style: TextStyle(
                    fontSize: 25,
                    height: 1,
                    fontStyle:FontStyle.italic,
                    color: Colors.white,
                    ),
                   ),
                   onPressed: (){
                   registeronclick();
                   },
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
               ),
               const SizedBox(
                 height: 20,
               ),
               Image.asset(
                 "lib/M.jpg",
                 width:MediaQuery.of(
                   context
                   ).size.width ,
                   height:180,
               )
             ],
            )
           ]
         ),
        ),
      ),
    );

  }
  void registeronclick() async {
  EasyLoading.show(status: 'Loading...');
  await controller.registeronclick();
  if(controller.signupstatues){
    EasyLoading.showSuccess(controller.message);
    Get.offAll(()=>Homescreen());
  }
  else{
    EasyLoading.showError(controller.message,duration: Duration(seconds: 3),dismissOnTap: true);
  }
}
}