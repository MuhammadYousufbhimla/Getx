import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/counter_contoller.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

final countercontrollers controller = Get.put(countercontrollers());

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    controller.counter.toString(),
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (() => controller.incrementcounter())));
  }
}
