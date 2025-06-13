import 'dart:math';

import 'package:get/get.dart';

class SayiController extends GetxController{
  RxInt randomSayi = 0.obs;
  void uret(){
    randomSayi.value = Random().nextInt(100);
  }
}