import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:supersell/supersell4.dart';
import 'package:supersell/supersell5.dart';
import 'package:get/get.dart';
import 'package:supersell/supersell9.dart';
import 'package:http/http.dart' as http;
import 'package:supersell/login/login_controller.dart';
import 'package:supersell/login/login_binding.dart';

class SuperSell3 extends StatefulWidget{
 const SuperSell3({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() =>_SuperSell3State();

}
class _SuperSell3State extends State<SuperSell3>{
  bool passwordvisibilty=true;
 LoginController controller =LoginController();
  @override
  void initState() {
    super.initState();
  }
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
        body:Container(
          height: double.infinity,
         child:SingleChildScrollView(
         child: Stack(
           children: [
            Column(
              children: [
              Image.asset("lib/F.jpg",
              fit: BoxFit.fitHeight,
              height: 250,
              width: MediaQuery.of(
                context
                ).size.width,
              ),
               const SizedBox(
                 height: 40,
               ),
               Container(
                 margin: EdgeInsets.all(8.0),
                 child: TextFormField(
                   onChanged:(Value) {
                     controller.email=Value;
                  } ,
                   
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText: "E-mail".tr,
                    labelStyle: TextStyle(fontSize: 25,color: Colors.pink[700]),
                    hintText: "Enter your E-mail",
                    hintStyle: TextStyle(fontSize: 20),
                    icon: Icon(Icons.alternate_email,
                    color: Colors.pink[700],
                    ),
                   ),
                  keyboardType: TextInputType.emailAddress,
                 ),
               ),
               Container(
                 margin: EdgeInsets.all(8.0),
                 child: TextFormField(
                   onChanged:(Value) {
                     controller.password=Value;
                  } ,
                   decoration: InputDecoration(
                      border: OutlineInputBorder(
                       borderSide: BorderSide(width: 20,color: Colors.blueGrey),
                       borderRadius: BorderRadius.circular(50.0),
                     ),
                    labelText:"Password".tr,
                    labelStyle: TextStyle(fontSize: 25,color: Colors.pink[700]),
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
                    color: Colors.pink[700],
                    ),
                    )
                   ),
                  keyboardType: TextInputType.visiblePassword,
                   obscureText: passwordvisibilty,
                 ),
               ),
               Container(
                 margin: EdgeInsets.all(8.0),
                 child: ElevatedButton(
                   child: Text(
                     "Log in".tr,
                   style: TextStyle(
                    fontSize: 25,
                    height:1,
                    fontStyle:FontStyle.italic,
                    color: Colors.white
                    ),
                   ),
                   onPressed: (){
                     onClickLogin() ;
                   },
                   style:ButtonStyle(
                     padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(100, 5, 100, 5)),
                     shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.pink[700]),
                   ),
                 ),
               ),
               TextButton.icon(
                onPressed: (){
                  
                  Get.to(()=>Supersell9());
                },
                icon: Icon(
                  Icons.emoji_food_beverage_outlined,
                  size: 32,
                  color: Colors.indigo,
                ),
                label: Text(
                  "Forgot Password".tr,
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo
                  ),
                  ),
              ),
               Image.asset(
                 "lib/L.png",
                 width:MediaQuery.of(
                   context
                   ).size.width ,
                   height:290,
               )
              ],
                     ),
            ] 
            ),
         ),
        ),
  );

  }
  void onClickLogin () async {
  EasyLoading.show(status: 'Loading...');
  await controller.loginonclick();
  if(controller.signupstatues){
    EasyLoading.showSuccess(controller.message);
    Get.offAll(()=>Supersell4());
  }
  else{
    EasyLoading.showError(
    controller.message,
    duration: Duration(seconds: 3),
    dismissOnTap: true
    );
  }
}
}