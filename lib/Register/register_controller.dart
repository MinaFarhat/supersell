import 'package:get/get.dart';
import 'package:supersell/register_server.dart';

class RegisterController extends GetxController{
var username;
var email;
var password;
var phonenumber ;
var signupstatues = false;
var message;
SignUpService1 serves =SignUpService1();
Future<void> registeronclick () async{
 serves.register(username,email,password, phonenumber);
signupstatues = await serves.register(username,email, password, phonenumber);
message = serves.message;
if(message is List){
  String temp = '';
  for(String s in message) temp+=s+'\n';
  message=temp;
}
}

}