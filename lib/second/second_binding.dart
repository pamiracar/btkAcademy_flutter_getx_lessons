import 'package:flutter_getx_dersleri/second/second_page_controller.dart';
import 'package:get/get.dart';
 
class SecondBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SecondPageController(),);
  }
}