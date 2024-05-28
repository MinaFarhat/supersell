import 'package:get/get.dart';
import 'package:supersell/login_server.dart';

class LoginController extends GetxController{
var email;
var password ;
var signupstatues = false;
var message;
SignUpService serves =SignUpService();
Future<void> loginonclick () async{
 serves.login(email,password);
signupstatues = await serves.login(email, password);
message = serves.message;
if(message is List){
  String temp = '';
  for(String s in message) temp+=s+'\n';
  message=temp;
}
}

}