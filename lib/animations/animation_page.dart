import 'package:flutter/material.dart';
import 'package:flutter_getx_dersleri/animations/animation_controller.dart';
import 'package:get/get.dart';

class AnimationPage extends GetView<AnimationControllerr> {
  const AnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Animasyonlar"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("AnimatedContainer Example"),
              SizedBox(height: 10,),
              Obx(
                () => AnimatedContainer(
                  duration: Duration(seconds: 2),
                  curve: Curves.easeInOut,
                  width: controller.containerWidth.value,
                  height: controller.containerHeight.value,
                  decoration: BoxDecoration(
                    color: controller.containerColor.value,
                    borderRadius: BorderRadius.circular(controller.radius.value),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Wrap(
                children: [
                  ElevatedButton(
                    onPressed: controller.boyutDegis,
                    child: const Text("Boyut Değiştir"),

                  ),

                ],
              ),
              ElevatedButton(
                onPressed: controller.animasyonlariSifirla,
                child: const Text("Animasyonları Sıfırla"),

              )
            ],
          ),
        ),
      ),
    );
  }
}
