import 'package:flutter_getx_dersleri/services/shared_preferences_service.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() async {
    await Get.putAsync(() async {
      var service = SharedPreferencesService();
      await service.init();
      return service;
    });

    await Future.delayed(Duration(seconds: 3));
  }
}
