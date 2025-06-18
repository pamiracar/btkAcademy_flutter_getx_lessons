import 'package:flutter/material.dart';
import 'package:flutter_getx_dersleri/services/shared_preferences_service.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() async {
    await Get.putAsync(() async {
      var service = SharedPreferencesService();
      debugPrint("Shared Preference service başlatılıyor");
      await service.init();
      debugPrint("Shared Preference service başlatıldı");
      return service;
    });
    debugPrint("3 saniye bekleniyor...");
    await Future.delayed(Duration(seconds: 3));
    debugPrint("3 saniye bitti!");
  }
}
