
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/counter_contoller.dart';
class pickerimage extends StatefulWidget {
  const pickerimage({super.key});

  @override
  State<pickerimage> createState() => _pickerimageState();
}

class _pickerimageState extends State<pickerimage> {
  @override
  Widget build(BuildContext context) {
    countercontrollers controller=Get.put(countercontrollers());
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage:controller.imagepath.isNotEmpty ?
            FileImage(File(controller.imagepath.toString())):null
            
            ),
          
         SizedBox(height: Get.height*0.3,),
        ElevatedButton(onPressed: (){
          controller.getimage();
        }, child: Text("Pick Image"))
        ],
      )
    );
  }
}