import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Secondscreen extends StatefulWidget {
  var name;
   Secondscreen({super.key,  this.name });

  @override
  State<Secondscreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Second page "+widget.name),
        title: Text("Second page "+Get.arguments[1]),
      ),
      body: Container(
        child: Center(child: InkWell(
         onTap: (() => Get.toNamed('/language')),

          child: Text("Language screen"))),
      ),
    );

  }}