import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supersell/Register/register_controller.dart';

class RegisterBinding implements Bindings {
@override 
void dependencies(){
  Get.put<RegisterController> (RegisterController());
}

}