import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/countergetx.dart';
import 'package:getx/favouriteapp.dart';
import 'package:getx/height&width.dart';
import 'package:getx/homescreen.dart';
import 'package:getx/imagepicker.dart';
import 'package:getx/langugae.dart';
import 'package:getx/opacity.dart';
import 'package:getx/secondscreen.dart';
import 'package:getx/swithchbtn.dart';
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
      debugShowCheckedModeBanner: false,
      translations: Apptransaltion(),
      locale: const Locale('en', 'US'),
      title: 'Getx Demo',
      color: Colors.lightBlue,
      home: Homescreen(),
      getPages: [
        GetPage(name: '/', page: (() => Homescreen())),
        GetPage(name: '/secondscreen', page: ()=>Secondscreen()),
        GetPage(name: '/language', page: ()=>languagescreen()),
        GetPage(name: '/height1',page:()=>hegwidth()),
        GetPage(name: '/counters',page:()=>counter()),
        GetPage(name: '/opacity',page:()=>opacitycheck()),
        GetPage(name: '/switch',page:()=>switchbtn()),
        GetPage(name: '/favourite',page:()=>favouriteapp()),
        GetPage(name: '/imagepick',page:()=>pickerimage()),
      ],
    );
  }
}

