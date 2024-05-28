import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';


class DioHelper
{
  Dio dio = Dio();
   init() {
     dio=Dio (
      BaseOptions(
        baseUrl: '' ,
        receiveDataWhenStatusError: true ,
        headers: {"":""} ,
      ),

    ) ;
  }
   Future<Response> getData({
   @required var url ,
   @required dynamic query ,
})async
  {
   return await dio.get(url,queryParameters:query,) ;

  }
 Future <Response> postData(
         {
           @required var url ,
           @required var  data ,
         }
  ) async {
    return await dio.post(
        url,
        data:data,
    );
 }
}