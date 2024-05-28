import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supersell/Register/supersell2.dart';
import 'package:supersell/login/supersell3.dart';
import 'package:supersell/supersell4.dart';
class Supersell11 extends StatefulWidget{
  const Supersell11({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Supersell11State();
}
class _Supersell11State extends State <Supersell11>{
  bool passwordvisibilty=true;

  get decoration => null;

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
                 image: AssetImage("lib/tt.jpg",),
                 fit: BoxFit.fitHeight,
                 
                 width: MediaQuery.of(
                   context
                   ).size.width,
               ),
               
               Container(
                 margin: EdgeInsets.all(8.0),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText: "User Name",
                    labelStyle: TextStyle(fontSize: 25,color: Colors.deepPurple,),
                    hintText: "Enter your name",
                    hintStyle: TextStyle(fontSize: 20),
                    icon: Icon(Icons.person_outline,
                    size: 25,
                    color: Colors.deepPurple,
                    ),
                   ),
                  keyboardType: TextInputType.text,
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
                    labelText: "E-mail",
                    labelStyle: TextStyle(fontSize: 25,color: Colors.deepPurple,),
                    hintText: "Enter your E-mail",
                    hintStyle: TextStyle(fontSize: 20),
                    icon: Icon(
                    Icons.alternate_email,
                    size: 25,
                    color: Colors.deepPurple,
                    ),
                   ),
                  keyboardType: TextInputType.emailAddress,
                 ),
               ),
               Container(
                 margin: EdgeInsets.all(8.0),
                 child: TextField(
                   decoration: InputDecoration(
                      border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 25,color: Colors.deepPurple,),
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
                    color: Colors.deepPurple,
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
                     prefixText: "+963  ",
                      border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText: "Phone Number",
                    labelStyle: TextStyle(fontSize: 25,color: Colors.deepPurple,),
                    hintText: "Enter your Phone Number",
                    hintStyle: TextStyle(fontSize: 20,),
                    icon: Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.deepPurple,
                    ),
                   ),
                  keyboardType: TextInputType.number,
                 ),
               ),
                Container(
                 margin: EdgeInsets.all(8.0),
                 child: ElevatedButton.icon(
                   label: Text("Edit",
                   style: TextStyle(
                    fontSize: 30,
                    height: 1,
                    fontStyle:FontStyle.italic,
                    color: Colors.white,
                    ),
                   ),
                   icon: Icon(
                     Icons.edit,
                     color: Colors.white,
                     size: 40,
                   ),
                   onPressed: (){
                    Get.offAll(()=>Supersell4());
                   },
                   style:ButtonStyle(
                     padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(100, 5, 100, 5)),
                     shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      //side: BorderSide(width: 2),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                   ),
                 ),
               ),
               Image.asset(
                 "lib/tt1.jpg",
                 width:MediaQuery.of(
                   context
                   ).size.width ,
                   height:300,
               )
             ],
           )
           ]
         ),
           ),
        ),
        );

  }
}