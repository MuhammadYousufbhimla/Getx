import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/counter_contoller.dart';

class switchbtn extends StatefulWidget {
  const switchbtn({super.key});

  @override
  State<switchbtn> createState() => _switchbtnState();
}

class _switchbtnState extends State<switchbtn> {
  @override
  final countercontrollers controller=Get.put(countercontrollers());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme screen"),),
      body: Container(child: Row(
     
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text("Dark theme"),
         Obx((() =>  Switch(value: controller.notification.value, 
          onChanged: (value){
            
            controller.setnotification(value);
              if(value ==true){
                print("darrk");
                   Get.changeTheme(ThemeData.dark());
              
              }
              else{
                print("light theme");
                    Get.changeTheme(ThemeData.light());
              }
          })))
        
      ],),),
    );
  }
}