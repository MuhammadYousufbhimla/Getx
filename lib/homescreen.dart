import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Card 1"),
                subtitle: Text("Details card one "),
                onTap: (() => Get.snackbar("Successfully click", "Done",
                    icon: Icon(Icons.add),
                    backgroundColor: Colors.blue,
                    colorText: Colors.orange,
                    snackPosition: SnackPosition.BOTTOM)),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Card 2"),
                subtitle: Text("Details card Two "),
                onTap: (() => Get.defaultDialog(
                  middleTextStyle: TextStyle(color: Colors.teal),
                    // backgroundColor: Colors.lightGreenAccent,
                    title: 'Delete chat',
                    middleText: 'Are you sure delete?',
                    // confirm: Text("Ok",),
                    // cancel: Text("cancel",),
                    onCancel: () {
                      Get.back();
                    },
                    onConfirm: () {})),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
