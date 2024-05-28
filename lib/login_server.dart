import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supersell/server_config.dart';
class SignUpService {
var url = Uri.parse(serverconfig.dominNameserver + serverconfig.login);
var message;
var token;
Future <bool> login(var email , password)async{
  SharedPreferences pref = await SharedPreferences.getInstance();
var responce =await http.post(
  url,
  headers:{
   'Accept' : 'application/json'
  },
  body: {
   'email':email,
   'password':password,
  },
);
if(responce.statusCode == 200){
var jsonResponce =jsonDecode(responce.body);
message = jsonResponce['message'];
print(jsonResponce);
token =jsonResponce['0']['token'];
pref.setString("token",token);
return true;
}
else if(responce.statusCode == 401){
  var jsonResponce = jsonDecode(responce.body);
  message=jsonResponce['message'];
  
return false;
}
else if(responce.statusCode == 422){
  var jsonResponce = jsonDecode(responce.body);
  message=jsonResponce['errors'];
  
return false;
}
else {
  message="server error";
  return false;
}
}

}