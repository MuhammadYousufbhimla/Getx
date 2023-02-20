import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/secondscreen.dart';

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
        title: Text("Home page "),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Snackbar"),
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
                title: Text("Dialog box"),
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
            Card(
              child: ListTile(
                title: Text("Bottomsheet box Theme change"),
                subtitle: Text("Details card Two "),
                onTap: (() {
                  Get.bottomSheet(Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light theme'),
                          onTap: (() => Get.changeTheme(ThemeData.light())),
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark theme'),
                          onTap: (() => Get.changeTheme(ThemeData.dark())),
                        ),
                     
                      ],
                    ),
                  ));
                }),
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    '/secondscreen',
                    arguments: ['Muhammad','Yousuf','Noora'],
                  );
                },
                child: Text('Secondscreen')),
          TextButton(
            onPressed: (){Get.toNamed('/height1');
            },
            child: Text("Height screen")),
            TextButton(
            onPressed: (){Get.toNamed('/counters');
            },
            child: Text("Counter screen")),
          ],
          
        ),
      ),
    );
  }
}
