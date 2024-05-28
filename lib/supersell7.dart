import 'dart:io';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'range.dart';
class Supersell7 extends StatefulWidget{
  const Supersell7({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Supersell7();
}
class _Supersell7 extends State<Supersell7>{
  XFile? _image;
   final ImagePicker _picker=ImagePicker();
   var b=Colors.black;
   var t = Colors.teal;
   var u =Colors.blue;
   DateTime? _dateTime;
   final item =['Medicines'.tr,'Canned food'.tr,'Foods'.tr,'tools'.tr];
   String ? value;
   DateTime ?d1;
   String ? d2;
   String ? d3;

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
    body: Center(
      child: SingleChildScrollView(
          child: Container(
             decoration:BoxDecoration(
              image: DecorationImage(
              image: AssetImage("lib/b1.jpg"),
              fit: BoxFit.cover,
            ), 
          ),
            child: Stack(
              children: [
                 Column(
                    children: [
                   Container(
                       margin: EdgeInsets.all(8.0),
                       child: TextField(
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderSide: BorderSide(width: 20,color: Colors.teal),
                             borderRadius: BorderRadius.circular(50.0),
                           ),
                          labelText: "Username".tr,
                          labelStyle: TextStyle(fontSize: 25,color: b,),
                          hintText: "Enter your name",
                          hintStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                          icon: Icon(Icons.person_outline,
                          size: 25,
                          color:u,
                          ),
                         ),
                        keyboardType: TextInputType.text,
                       ),
                     ),
                   Divider(
                     color: Colors.black,
                   ),
                   Container(
                       margin: EdgeInsets.all(8.0),
                       child: TextField(
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderSide: BorderSide(width: 20,color: Colors.teal),
                             borderRadius: BorderRadius.circular(50.0),
                           ),
                          labelText:"Name of prudect".tr,
                          labelStyle: TextStyle(fontSize: 25,color:b,),
                          hintText: "Enter your name is prudect",
                          hintStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                          icon: Icon(Icons.content_paste_rounded,
                          size: 25,
                          color: u,
                          ),
                         ),
                        keyboardType: TextInputType.text,
                       ),
                     ),
                   Divider(
                     color: Colors.black,
                   ),
                   Datetime(),
                   Divider(
                     color: Colors.black,
                   ),
                   Container(
                        margin: EdgeInsets.all(16),
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: u,),
                        ),
                        child:DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                          hint: Text(
                          "choose a Classification".tr,
                          ),
                          value: value,
                          iconSize: 36,
                          icon:Icon(Icons.arrow_drop_down,color: u,),
                          isExpanded: true,
                          items: item.map(buildMenuItem).toList(),
                          onChanged: (value)=>setState(()=> this.value=value),
                          ),
                        ) ,
                      ),
                   Divider(
                     color: Colors.black,
                   ),
                   Container(
                     margin: EdgeInsets.all(8.0),
                     child: TextField(
                       decoration: InputDecoration(
                         prefixText: "+963  ",
                          border: OutlineInputBorder(
                           borderSide: BorderSide(width: 20,color:t),
                           borderRadius: BorderRadius.circular(50.0,),
                         ),
                        labelText: "Phone Number".tr,
                        labelStyle: TextStyle(fontSize: 25,color:b,),
                        hintText: "Enter your Phone Number",
                        hintStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,),
                        icon: Icon(
                        Icons.phone,
                        size: 25,
                        color: u,
                        ),
                       ),
                      keyboardType: TextInputType.phone,
                     ),
                   ),
                   Divider(
                     color: Colors.black,
                   ),
                   Container(
                     margin: EdgeInsets.all(8.0),
                     child: TextField(
                       decoration: InputDecoration(
                          border: OutlineInputBorder(
                           borderSide: BorderSide(width: 20,color:t),
                           borderRadius: BorderRadius.circular(50.0,),
                         ),
                        labelText: "Quantity".tr,
                        labelStyle: TextStyle(fontSize: 25,color:b,),
                        hintText: "Enter your quantity",
                        hintStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,),
                        icon: Icon(
                        Icons.production_quantity_limits,
                        size: 25,
                        color: u,
                        ),
                       ),
                      keyboardType: TextInputType.number,
                     ),
                   ),
                   Divider(
                     color: Colors.black,
                   ),
                   Container(
                     margin: EdgeInsets.all(8.0),
                     child: TextField(
                       decoration: InputDecoration(
                         suffixText: "Dollar             ",
                          border: OutlineInputBorder(
                           borderSide: BorderSide(width: 20,color:t),
                           borderRadius: BorderRadius.circular(50.0,),
                         ),
                        labelText:"The price".tr,
                        labelStyle: TextStyle(fontSize: 25,color:b,),
                        hintText: "Enter your price for one",
                        hintStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,),
                        icon: Icon(
                        Icons.price_change_outlined,
                        size: 25,
                        color: u,
                        ),
                       ),
                      keyboardType: TextInputType.number,
                     ),
                   ),
                   Container(

                     child: Column(
                      children: [
                         
                        SizedBox(
                          height: 100,
                          child: Text(
                          "Percentage X days before expiration".tr,
                          style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),

                        TextField(
                          decoration: InputDecoration(
                         //suffixText: "Dollar             ",
                          border: OutlineInputBorder(
                           borderSide: BorderSide(width: 20,color:t),
                           borderRadius: BorderRadius.circular(50.0,),
                          ),
                          label: Text("the number of days"),
                          labelStyle: TextStyle(fontSize: 25,color:b,),
                         ),
                        ),
                        Range(),
                      ],
                    ),
                   ),
                   Container(
                     child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Text(
                          "Percentage X days before expiration".tr,
                          style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                         //suffixText: "Dollar             ",
                          border: OutlineInputBorder(
                           borderSide: BorderSide(width: 20,color:t),
                           borderRadius: BorderRadius.circular(50.0,),
                          ),
                          label: Text("the number of days"),
                          labelStyle: TextStyle(fontSize: 25,color:b,),
                         ),
                        ),
                        Range(),
                      ],
                    ),
                   ),
                   Container(
                     child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Text(
                          "Except that".tr,
                          style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                         //suffixText: "Dollar             ",
                          border: OutlineInputBorder(
                           borderSide: BorderSide(width: 20,color:t),
                           borderRadius: BorderRadius.circular(50.0,),
                          ),
                          label: Text("the number of days"),
                          labelStyle: TextStyle(fontSize: 25,color:b,),
                         ),
                        ),
                        Range(),
                      ],
                    ),
                   ),
                    Divider(
                     color: Colors.black,
                   ),
                   SizedBox(
                     child: imageprofile(),
                
                   ),
                  Divider(
                     color: Colors.black,
                   ),
                             Container(
                   child: Container(
                     width: double.infinity,
                        
                     child:ElevatedButton.icon(
                     onPressed: (){} ,
                      label : Text(
                          "Send".tr,
                         style: TextStyle(
                         fontStyle: FontStyle.italic,
                           fontSize: 25,
                           height: 1,
                           color: u,
                           )
                     ),
                     icon: Icon(
                       Icons.send_outlined,
                       color: u,
                       size: 40,
                     ),
                    style:ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(100, 5, 100, 5)),
                    shape: MaterialStateProperty.all(
                     RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     ),
                   ),
                   backgroundColor: MaterialStateProperty.all(b),
                  ), 
                     ),
                   )
                  ),
                  ],
                  ),
              ],
            ),
          ),
        ),
    ),
  );
}

DropdownMenuItem<String> buildMenuItem(String item) =>DropdownMenuItem(
  value: item,
  child: Text(
    item,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
  ),
  );

Widget imageprofile()
  {
     return Center(
         child: Column(
           children: [
             Container(
               height: 250,
               child:_image==null
                 ?Image(image: AssetImage("lib/LL.jpg"))
                 :Image(image: FileImage(File(_image!.path)),fit: BoxFit.fill,alignment: Alignment.topLeft,),
             ),
                 Padding(
                   padding: EdgeInsets.symmetric(
                     horizontal: 10,
                     vertical: 10,
                   ),
                   child: ElevatedButton.icon(
                    style:ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(100, 5, 100, 5)),
                  shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                   //side: BorderSide(width: 2),
                   ),
                 ),
                 backgroundColor: MaterialStateProperty.all(b),
                ), 
                     onPressed:(){
                        showModalBottomSheet(
                        context: context,
                         builder:((Builder)=>bottomsheet()));
                     },
                      label: Text(
                       "ADD PHOTO".tr,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: u,
                        ),
                        ),
                      icon:Icon( 
                        Icons.add_a_photo,
                        size: 50,
                        color: u,
                        ),
                        
                  ),
                 ),
           ],
         ),
       
     );
  }
  Widget bottomsheet()
  {
    return Container(
        height: 100.0,
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
                     color: Colors.blue[700],
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
                     color: Colors.blue[700],
                     size: 30,
                   ),
                   label:Text(
                     "Gallery",
                     style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.black),
                     ),
                   ),
                  
              ],
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
Widget Datetime()
{
  final format = DateFormat(
    'dd-MM-yyyy hh:mm a',
  );
  return Center(
    child: Container(
       child: Padding(
         padding: EdgeInsets.all(16.0),
         child:DateTimeField(
           format: format,
           decoration: InputDecoration(
             border: OutlineInputBorder(
            borderSide: BorderSide(width: 20,color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(50.0),
            ),
           labelText:"Expiration date".tr,
           labelStyle: TextStyle(fontSize: 25,color: b,),
           icon: Icon(Icons.date_range_outlined,
                    size: 25,
                    color: u,
          ),
          ),
           onShowPicker: (context,currentValue)async{
           final date= await showDatePicker(
             context: context,
             initialDate: currentValue ?? DateTime.now(),
             firstDate: DateTime(2020),
            lastDate: DateTime(2030),
          );
          if(date != null){
            final time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()));
           return DateTimeField.combine(date, time);
          }
          else{
               return currentValue;
          }
         }
         ),
      ),
    ),
  );
}
}