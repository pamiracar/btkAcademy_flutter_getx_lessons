import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationControllerr extends GetxController {
  final containerWidth = 100.0.obs;
  final containerHeight = 100.0.obs;
  final containerColor = Colors.blue.obs;
  final radius = 10.0.obs;
  final containerOpacity = 1.0.obs;

  void boyutDegis(){
    containerWidth.value = containerWidth.value == 100.0 ? 200.0 : 100.0;
    containerHeight.value = containerHeight.value == 100.0 ? 200.0 : 100.0;
  }

  void renkDegis(){
    containerColor.value = containerColor.value == Colors.blue ? Colors.yellow : Colors.blue;
  }

  void sekilDegis(){
    radius.value = radius.value == 10.0 ? 100.0 : 10.0;
  }

  void animasyonlariSifirla(){
    containerWidth.value = 100.0;
    containerHeight.value = 100.0;
    radius.value = 10.0;
    containerColor.value = Colors.blue;
    containerOpacity.value = 1.0;
    
  }

  void changeOpacity(){
    containerOpacity.value = containerOpacity.value == 1.0 ? 0.3 : 1.0;
  }

}