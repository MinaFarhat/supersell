import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supersell/login/login_controller.dart';

class LoginBinding implements Bindings {
@override 
void dependencies(){
  Get.put<LoginController> (LoginController());
}

}