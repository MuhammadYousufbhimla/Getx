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
String _dropDownValue = "";
   String dropdownvalue = 'Item 1';  
  int _value = 1;
 var items = [   
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

   void _changelanguage(){
Get.updateLocale(const Locale("ur","Pk"));


   }
     void _changelanguage1(){
Get.updateLocale(const Locale("en","US"));
   }
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title:Text('title'.tr),),
    body: Center(
      child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Text('sent1'.tr,
          style: TextStyle(fontSize: 20),

          
          ),

      

               
              Container(
                 height: MediaQuery.of(context).size.height * 0.07,
                 margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(05),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 2, 107, 6)),
                            borderRadius: BorderRadius.circular(15)),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          underline: Container(),
                          hint: _dropDownValue == ""
                              ? Text('Select Language')
                              : Text(
                                  _dropDownValue,
                                ),
                          items: <String>[
                            'English',
                            'Urdu',
                            'Arabic',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 2, 107, 6)),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              
                              _dropDownValue = value!;
                               if(_dropDownValue=='English'){
                                _changelanguage1();
                               }
                               else if(_dropDownValue=='Urdu'){
                                _changelanguage();
                               }
                               else if(_dropDownValue=='Arabic'){
                                Get.updateLocale(const Locale("ar","Ar"));
                                
                               }
                              print(_dropDownValue);
                            });

                       
                           },
                          
                         ),
              ), 


      
          // ElevatedButton(onPressed: (){
          // _changelanguage1();
          // }, child: Text("English"))
        ],
      ),
    ),
    //  floatingActionButton: FloatingActionButton(
    //     onPressed: _changelanguage,
        
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.change_circle),
    //  )  
    //  ,
     
    );
    
  }
}

