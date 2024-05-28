import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supersell/utils/utils.local_storage/local_storage.dart';
class Applanguage extends GetxController{
 var applocal ='ar';
 @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();

    Localstorage localstorage = Localstorage();

    applocal= await localstorage.languageSelected == null
    ?'ar'
    :await localstorage.languageSelected;
    Get.updateLocale(Locale(applocal));
    update();
    
  }
  
  void changelanguage(String type)async{
  Localstorage localstorage = Localstorage();

  if(applocal==type){
    return;
  }
  if(applocal=='ar')
  {
    applocal='ar';
    localstorage.saveLanguageTodisk('ar');
  }
  else{
    applocal='en';
    localstorage.saveLanguageTodisk('en');
  }
  update();
  }

}