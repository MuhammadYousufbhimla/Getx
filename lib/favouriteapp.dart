import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/counter_contoller.dart';

class favouriteapp extends StatefulWidget {
  const favouriteapp({super.key});

  @override
  State<favouriteapp> createState() => _favouriteappState();
}

class _favouriteappState extends State<favouriteapp> {
  @override
  
  Widget build(BuildContext context) {
  countercontrollers controller=Get.put(countercontrollers());
    return Scaffold(body: ListView.builder(
      itemCount: controller.fruitlist.length,
      itemBuilder:(context, index) {
        return Card(
          child: ListTile(
            onTap: (){
              if(controller.templist.contains(controller.fruitlist[index].toString())){
                controller.removefromfavouirte(controller.fruitlist[index].toString());
              }
              else{
                controller.addtofavourite(controller.fruitlist[index].toString());
              }
            },
            title: Text(controller.fruitlist[index].toString()),
            trailing:Obx(() {
              return Icon(Icons.favorite,
              color: controller.templist.contains(controller.fruitlist[index].toString())?Colors.red:Colors.white);
            },)
          
          ),
        );
    
      }),

    );
  }
}