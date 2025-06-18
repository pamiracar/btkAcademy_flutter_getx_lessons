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
  void onInit() async {
    super.onInit();
    debugPrint("Sayı Controller onInit");
    await _test();
  }

  _test() async {
    var sharedService = Get.find<SharedPreferencesService>();
    await sharedService.saveData("tc", "71914155148");
    var okunanDeger = sharedService.getData("tc");
    debugPrint(okunanDeger);
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