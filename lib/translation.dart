import 'package:get/get.dart';
import 'package:supersell/utils/ar.dart';
import 'package:supersell/utils/en.dart';
class Translation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
   'en' : en,
   'ar' : ar,
  };
}