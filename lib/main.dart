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
      translations:Apptransaltion(),
      locale: const Locale("en","US"),
      title: 'Getx Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'title'.tr),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



 void _changelanguage(){
Get.updateLocale(const Locale("ur","Pk"));
 }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               Text(
             'sent1'.tr, // .tr tarnsaltion k lie lgaya hai  
             
            style: TextStyle(fontSize: 20),
            ),
            
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changelanguage,
        tooltip: 'Increment',
        child: const Icon(Icons.change_circle),
      ), 
    );
  }
}
