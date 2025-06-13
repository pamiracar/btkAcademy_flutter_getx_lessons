import 'package:flutter/material.dart';
import 'package:flutter_getx_dersleri/home_page/sayac_controller.dart';
import 'package:flutter_getx_dersleri/sayi_controller.dart';
import 'package:get/get.dart';

import 'home_page/home_page.dart';

void main() {
  Get.put(SayiController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

