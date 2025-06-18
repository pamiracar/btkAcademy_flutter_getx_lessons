import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPageController extends GetxController {
  var name = "Emre".obs;
  @override
  void onInit() {
    super.onInit();
    debugPrint("Second Page controller init");
  }

  void degistir(){
    name.value = "pamir";
  }
}