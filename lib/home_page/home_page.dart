import 'package:flutter/material.dart';
import 'package:flutter_getx_dersleri/home_page/sayi_controller.dart';
import 'package:get/get.dart';

import 'sayac_controller.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Getx Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/second");
              },
              child: const Text("Second page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/animation");
              },
              child: const Text("Go to Animations Page"),
            ),
            GetBuilder(
              builder: (controller) => Text(
                controller.sayac.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              init: SayacController(),
            ),
            const Text('Üretilen rastgele sayı: '),
            Obx(
              () =>
                  Text(Get.find<SayiController>().randomSayi.value.toString()),
            ),
            GetX<SayiController>(
              builder: (controller) =>
                  Text(controller.randomSayi.value.toString()),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyFloatingActionButton(),
          SizedBox(height: 10),
          RastgeleSayiButton(),
        ],
      ),
    );
  }
}

class RastgeleSayiButton extends GetView<SayiController> {
  const RastgeleSayiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 1,
      onPressed: () {
        controller.uret();
      },
      child: Icon(Icons.refresh),
    );
  }
}

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SayacController>(
      builder: (controller) => FloatingActionButton(
        heroTag: 2,
        onPressed: () {
          controller.arttir();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
