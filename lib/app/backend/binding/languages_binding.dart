/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
import 'package:get/get.dart';
import 'package:ultimate_salon_owner_flutter/app/controller/languages_controller.dart';

class LanguagesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => LanguagesController(parser: Get.find()),
    );
  }
}
