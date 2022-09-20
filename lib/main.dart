import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/transalations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      translations: Apptransaltion(),
      locale: const Locale('en','US'),
      title: 'Getx Demo',
      color: Colors.lightBlue,
      home:Homepage() ,
    
    
    
    );
    
    
  }
  
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  @override
   void _changelanguage(){


Get.updateLocale(const Locale("ur","Pk"));


   }
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title:Text('title'.tr),),
    body: Center(
      child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('sent1'.tr,
          style: TextStyle(fontSize: 20),
          ),
          
        ],
      ),
    ),
     floatingActionButton: FloatingActionButton(
        onPressed: _changelanguage,
        tooltip: 'Increment',
        child: const Icon(Icons.change_circle),
     )  
    );
    
  }
}

