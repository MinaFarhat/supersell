import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:like_button/like_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supersell/model.dart';
import 'supersell5.dart';
import 'package:http/http.dart' as http;
class Product {
   String ?name;
   int ?id;
   String ? username;
   String ? image;
   double ? price;
   String ? unit;
   Product(){
     this.name=name;
     this.id=id;
     this.username=username;
     this.image=image;
     this.price=price;
     this.unit=unit;
     
   }
  Product.fromJson(dynamic data){
       id = data['id'];
        name = data['name'];
        username=data['username'];
        image = data['image'];
        price = data['price'];
        unit=data['unit'];
  }
}


class Supersell4 extends StatefulWidget {
  const Supersell4({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Supersell4state();
}

class _Supersell4state extends State<Supersell4> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Supersell5(),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Super Sell",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        floatingActionButton: FloatingActionButton(
          child:Icon(
               Icons.search,
               size: 30,
          ),
          onPressed: (){},
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
          child: Container(
            /*decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("lib/M2.jpg"),
                fit: BoxFit.fill,
                 )
            ),
            */
            child: Column(
              children:[getl()]
            ),
          ),
        ));
  }
  
 Widget getl(){
   return FutureBuilder(
     future: SEE.gett(),
     builder: (context,snapshot){
       if(snapshot.hasData){
         return SingleChildScrollView(
           child: Wrap(children: snapshot.data as List<Widget>,),
         );
         
       }
       else if(snapshot.hasError){
         return Center(child: Text("erorr"),);
       }
       return CircularProgressIndicator();
     }
     );
 }
 
}
class SEE extends StatelessWidget {
prudect_details p;
SEE(this.p);
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Card(
        child: Column(
          children:[
          Container(
            alignment: Alignment.bottomRight,
            child: Column(
              children: [
               Text(
              "Name of prudect:${p.name}".tr,
              style: TextStyle(fontSize: 30,fontStyle:FontStyle.italic),
              ),
              Text(
             "The price is:${p.price}",
             style: TextStyle(fontSize: 30,fontStyle:FontStyle.italic),
             ),
              Text(
             "The unit is:${p.unit}",
             style: TextStyle(fontSize: 30,fontStyle:FontStyle.italic),
             ),
             ]
            ),
          ),
          Image(
          image:NetworkImage('${p.image}'),
          fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
          children:[
           LikeButton(
             likeCountPadding:EdgeInsets.only(left: 12),
             size: 50,
             isLiked: true,
             likeCount:4 ,
             countBuilder: (count,isLiked,text){
               final color = Colors.indigo;
               return Text(
                 text,
                 style: TextStyle(
                   color: color,
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               );
             },
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(padding: EdgeInsets.all(8)),
               Text(
                 "View Count ${p.view}",
                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.purple),
              ),
               Icon(
                Icons.remove_red_eye_outlined,
                size: 30,

              ),
             ],
           )
          ],
          ),
          Divider(
          color: Colors.black,
          ),
          ] ,
        ),
      ),
      onTap: (){

      },
    );
  }
  static Future<List<SEE>> gett() async{
    List a= await g().getallproduct();
    List<SEE> b=[];
    for(var x in a){
      b.add(SEE(x));
    }
    return b;
 }
}
class g{
   Future<List<prudect_details>> getallproduct() async{
         SharedPreferences pref = await SharedPreferences.getInstance();

    var response =await http.get(Uri.parse('http://shoppingcontent.googleapis.com/content/v2.1/{merchantId}/products'),
    headers: {'Authorization':'Bearer ${pref.getString("token")}'},
     );
    List<dynamic> data=jsonDecode(response.body);
    return     data.map((e) =>     prudect_details.fromJson(e)).toList()
;
  }

}