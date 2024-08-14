/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
import 'package:ultimate_salon_owner_flutter/app/backend/api/api.dart';
import 'package:ultimate_salon_owner_flutter/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:ultimate_salon_owner_flutter/app/util/constance.dart';

class InboxParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  InboxParser(
      {required this.sharedPreferencesManager, required this.apiService});

  String getUID() {
    return sharedPreferencesManager.getString('uid') ?? '';
  }

  Future<Response> getChatConversion(var uid) async {
    return await apiService.postPrivate(AppConstants.getChatConversionList,
        {'id': uid}, sharedPreferencesManager.getString('token') ?? '');
  }
}
