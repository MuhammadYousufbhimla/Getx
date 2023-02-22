import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class countercontrollers extends GetxController{
  RxInt counter=1.obs;
  RxDouble opacity=.4.obs;
  RxBool notification=false.obs; 
  RxList <String> fruitlist=["Apple","Mango","Banana","Orange"].obs;
  RxList templist=[].obs;
  RxString imagepath="".obs;

// Create method counter
  incrementcounter(){
    counter.value++;
    print(counter.value);
  }

  //Create method opacity
  setopacity(double value){
  opacity.value=value;
  print(opacity.value); 

  }

// Create method switch btn

setnotification(bool value){
  notification.value=value;
  print(notification.value);
}

//Create method addfavourite 

addtofavourite(String value){
  templist.add(value);
  Get.snackbar('Message ',"Add Favouite", snackPosition: SnackPosition.TOP);
 print(templist);
}


// Create method removefavourite

 removefromfavouirte(String value){
  templist.remove(value);
    Get.snackbar('Message ',"Remove Favouite", snackPosition: SnackPosition.BOTTOM);
  print(templist);
 }

// Create method image picker

Future getimage()async{
   final ImagePicker _picker=ImagePicker();
   final image=await _picker.pickImage(source: ImageSource.gallery);
   if(image!=null){
    imagepath.value=image.path.toString();
   }
 
}

}