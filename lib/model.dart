import 'package:flutter/cupertino.dart';

class prudect_details{
  final String name;
  final String image;
  final double price;
  final String unit;
  final int view;
  final int like;
 prudect_details (
 {
   required this.name,
   required this.image,
   required this.price,
   required this.unit,
   required this.view,
   required this.like,
 });
 factory prudect_details.fromJson(Map<String,dynamic> m){
   print(m);
   return prudect_details(
     image: m['image'],
     like: m['like_count'],
     name: m['name'],
     price: double.parse(m['price'].toString()),
     unit: m['unit'],
     view: m['view_count'],

   );
 }
}