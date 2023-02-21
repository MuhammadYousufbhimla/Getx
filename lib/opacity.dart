import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/counter_contoller.dart';

class opacitycheck extends StatefulWidget {
  const opacitycheck({super.key});

  @override
  State<opacitycheck> createState() => _opacitycheckState();
}

class _opacitycheckState extends State<opacitycheck> {
  @override
  final countercontrollers controller=Get.put(countercontrollers());
  Widget build(BuildContext context) {
    print("check opacity");
    return Scaffold(
      body: 
       Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() => Container(
             height: Get.height*0.200,
             width: Get.width*0.200,
             color: Colors.green.withOpacity(controller.opacity.value),
            ))
            ),
            Obx(() => 
           Slider(value: controller.opacity.value,
            onChanged: (value){
              controller.setopacity(value);
            })
            )
            ],)
      ),
    );
  }
}