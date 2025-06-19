import 'package:flutter/material.dart';
import 'package:flutter_getx_dersleri/core/initial_binding.dart';
import 'package:flutter_getx_dersleri/home_page/home_binding.dart';
import 'package:flutter_getx_dersleri/home_page/sayac_controller.dart';
import 'package:flutter_getx_dersleri/home_page/sayi_controller.dart';
import 'package:flutter_getx_dersleri/second/second_binding.dart';
import 'package:flutter_getx_dersleri/second/second_page.dart';
import 'package:flutter_getx_dersleri/splash/splash_page.dart';
import 'package:get/get.dart';

import 'home_page/home_page.dart';
import 'home_page/sayi_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: [
        GetPage(name: "/splash" , page: () => SplashPage(),),
        GetPage(name: "/home", page: () => MyHomePage(), binding: HomeBinding() ),
        GetPage(name: "/second", page: () => SecondPage(), binding: SecondBinding(),)
      ],
      initialRoute: "/splash",
      initialBinding: InitialBinding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

