import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_getx_dersleri/services/shared_preferences_service.dart';
import 'package:get/get.dart';

class SayiController extends GetxController{
  RxInt randomSayi = 0.obs;
  void uret(){
    randomSayi.value = Random().nextInt(100);
  }
  @override
  void onInit() {
    super.onInit();
    debugPrint("Sayı Controller onInit");
    _test();
  }

  _test(){
    var sharedService = Get.find<SharedPreferencesService>();
    sharedService.saveData("tc", "71914155148");
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint("Sayı Controller onClose");
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("Sayı Controller onReady");
  }
}