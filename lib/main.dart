import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supersell/Register/supersell2.dart';
import 'package:supersell/home%20screen.dart';
import 'package:supersell/login/supersell3.dart';
import 'package:supersell/supersell4.dart';
import 'package:supersell/translation.dart';

void main() async{
   await GetStorage.init();
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     translations: Translation(),
     home: Homescreen(),
     locale: Locale('en'),
     fallbackLocale: Locale('en'),
     builder: EasyLoading.init(),
    );
  }
}
