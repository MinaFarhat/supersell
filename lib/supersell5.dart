import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supersell/controller/app_language.dart';
import 'package:supersell/home%20screen.dart';
import 'package:supersell/supersell11.dart';
import 'package:supersell/supersell6.dart';
import 'package:supersell/supersell8.dart';
import 'translation.dart';
class Supersell5 extends StatefulWidget{
  const Supersell5({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Supersell5State();

}
 
class _Supersell5State extends State<Supersell5>
{ 
    XFile? _image;
   final ImagePicker _picker=ImagePicker();
   String _selectlang = 'en';
  String ? _imagepath;
  @override
  void initState() {
    super.initState();
    loadimage();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Remon',style: TextStyle(fontSize: 25,fontStyle:FontStyle.italic,color: Colors.black,)),
             accountEmail: Text('Remon.com',style:TextStyle(fontSize: 25,color: Colors.black ,fontStyle: FontStyle.italic)),
             
             currentAccountPicture:imageprofile(),
             decoration: BoxDecoration(
               color: Colors.pink,
               image: DecorationImage(
                 image: AssetImage(
                   'lib/G1.jpg',
                 ),
                 fit: BoxFit.cover,
              )
             ),
             ),
             ListTile(
               leading: Icon(Icons.favorite,color: Colors.pink[700],),
               title: Text(
                 "Favorirs".tr,
                  style: TextStyle(
                   fontStyle:FontStyle.italic,
                 ),
                 ),
               onTap: ()=>{},
               
             ),
             ListTile(
               leading: Icon(Icons.production_quantity_limits_sharp,color: Colors.blue[700],),
               title: Text(
                 "prudects".tr,
                  style: TextStyle(
                   fontStyle:FontStyle.italic,
                 ),
                 ),
               onTap: ()=>{
                Get.to(()=>SuperSell6())
               },
             ),
             ListTile(
               leading: Icon(Icons.notifications,color:Colors.pink[700] ),
               title: Text(
                 "Request".tr,
                  style: TextStyle(
                   fontStyle:FontStyle.italic,
                 ),
                 ),
               onTap: ()=>{},
               trailing: ClipOval(
                 child: Container(
                   color: Colors.red,
                   width: 20,
                   height: 20,
                   child: Center(
                     child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                     ),
                   ),
               
                 ),
               ),
             ),
             Divider(),
             ListTile(
               leading: Icon(Icons.language,color: Colors.blue[700],),
               title: Text(
                 "Language".tr,
                  style: TextStyle(
                   fontStyle:FontStyle.italic,
                 ),
                 ),
                trailing: GetBuilder<Applanguage>
                  (
                  init: Applanguage(),
                  builder: (controller) {
                    return DropdownButton(
                     items: [
                       DropdownMenuItem(
                        child: Text('EN'),
                        value: 'en',
                      ),
                      DropdownMenuItem(
                      child: Text('AR'),
                      value: 'ar',
                      ),
                     ],
                     value: controller.applocal,
                     onChanged: (value){
                       controller.changelanguage(value as String);
                       Get.updateLocale(Locale(value));
                     },
                    );
                  }
                ),
             ),
             ListTile(
               leading: Icon(Icons.account_circle_rounded,color: Colors.blue[700],),
               title: Text(
                 "Account".tr,
                  style: TextStyle(
                   fontStyle:FontStyle.italic,
                 ),
                 ),
               onTap: ()=>{
                 Get.to(()=>Supersell11())
               },
             ),
             ListTile(
               leading: Icon(Icons.logout,color:Colors.blue[700],),
               title: Text(
                 "LogOut".tr,
                  style: TextStyle(
                   fontStyle:FontStyle.italic,
                 ),
                 ),
               onTap: ()=>{
                 Get.offAll(Homescreen())
               },
             ),
             Divider(),
             TextButton.icon(
              onPressed: (){
                Get.to(()=>Supersell8());
              },
               label: Text(
                 "AboutUs".tr,
                 style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                   fontStyle: FontStyle.italic,
                   color: Colors.indigo
                 ),
              ),
              icon: Icon(
                Icons.adb_outlined,
                size: 40,
              ),
          ),
        ],
      )
    );
  }
  Widget imageprofile()
  {
     return Center(
         child: Stack(
           children: [
             _imagepath != null
              ? CircleAvatar(backgroundImage:FileImage(File(_imagepath!)) ,radius:100.0 ,) 
               :CircleAvatar(
                 child:_image==null
                 ?Image(image: AssetImage("lib/O.jpg"))
                 :Image(image: FileImage(File(_image!.path)),fit: BoxFit.fill,),
                 radius: 100.0,
               ),
             Positioned(
               child:InkWell(
                 onTap: (){
                   showModalBottomSheet(
                     context: context,
                      builder:((Builder)=>bottomsheet()),
                  );
                 },
                 child: Icon(
                   Icons.camera_alt_outlined,
                   color: Colors.pink[700],
                   size: 28,
                 ),
               ),
               bottom: 0.5,
               right: -1,
            ),
           ],
         ),
       
     );
  }
  Widget bottomsheet()
  {
    return Container(
        height: 150.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            Text(
              "Choose Profile Photo",
              style: TextStyle(
                fontSize: 20.0,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                  onPressed:(){
                    takephoto(ImageSource.camera);
                  },
                   icon:Icon(
                     Icons.camera,
                     color: Colors.pink[700],
                     size: 30,
                     ),
                   label:Text(
                     "Camera",
                     style: TextStyle(fontSize: 20,fontStyle:FontStyle.italic,color: Colors.black),
                     ),
                   ),
                  TextButton.icon(
                  onPressed:(){
                    takephoto(ImageSource.gallery);
                  },
                   icon:Icon(
                     Icons.image,
                     color: Colors.purple,
                     size: 30,
                   ),
                   label:Text(
                     "Gallery",
                     style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.black),
                     ),
                   ),
              ],
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
              child:TextButton.icon(
                onPressed: (){
                  SaveImage(_image!.path);
                },
                label: Text(
                  "Save",
                 style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.black),
                ),
                icon:Icon(
                  Icons.save,
                  color: Colors.yellow,
                  size:30 ,
                ) ,
              ),
            ),
          ],
      ),
    );
  }
  
 takephoto(ImageSource source)async{
    final XFile? pickedfile=await _picker.pickImage(
      source: source,
      );
      setState(() {
        _image=pickedfile;
      });
  }
 void SaveImage(path)async
 {
  SharedPreferences saveimage = await SharedPreferences.getInstance();
  saveimage.setString('imagePath',path);
 }
 void loadimage() async
 {
   SharedPreferences saveimage = await SharedPreferences.getInstance();
   setState(() {
     _imagepath = saveimage.getString('imagePath');
   });
 }
 }
