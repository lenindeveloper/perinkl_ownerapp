/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
import 'package:get/get.dart';
import 'package:ultimate_salon_owner_flutter/app/controller/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => ProfileController(parser: Get.find()),
    );
  }
}
