import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class hegwidth extends StatefulWidget {
  const hegwidth({super.key});

  @override
  State<hegwidth> createState() => _hegwidthState();
}

class _hegwidthState extends State<hegwidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: Get.height * 1,
          width: Get.width * 0.5,
          color: Colors.green,
          child: Text("This is a Height"),
        ),
      ),
    );
  }
}
