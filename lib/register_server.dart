import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supersell/server_config.dart';
class SignUpService1 {
var url = Uri.parse(serverconfig.dominNameserver + serverconfig.register);
var message;
var token;
Future <bool> register( var username,email , password,phonenumber)async{
  SharedPreferences pref = await SharedPreferences.getInstance();
var responce =await http.post(
  url,
  headers:{
   'Accept' : 'application/json'
  },
  body: {
   'name':username,
    'email':email ,
   'password':password,
   'phone_number':phonenumber,
  },
);
if(responce.statusCode == 200){
var jsonResponce =jsonDecode(responce.body);
message = jsonResponce['message'];
token =jsonResponce['0']['token'];
pref.setString("token",token);
return true;
}
else if(responce.statusCode == 422){
  var jsonResponce = jsonDecode(responce.body);
  message=jsonResponce['message'];
return false;
}
else {
  message="server error";
  return false;
}
}

}