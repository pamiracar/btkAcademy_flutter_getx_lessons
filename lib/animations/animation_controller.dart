import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationControllerr extends GetxController {
  final containerWidth = 100.0.obs;
  final containerHeight = 100.0.obs;
  final containerColor = Colors.blue.obs;
  final radius = 10.0.obs;

  void boyutDegis(){
    containerWidth.value = containerWidth.value == 100.0 ? 200.0 : 100.0;
    containerHeight.value = containerHeight.value == 100.0 ? 200.0 : 100.0;
  }

  void animasyonlariSifirla(){
    containerWidth.value = 100.0;
    containerHeight.value = 100.0;
  }

}