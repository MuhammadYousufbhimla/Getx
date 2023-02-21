import 'package:get/get.dart';


class countercontrollers extends GetxController{
  RxInt counter=1.obs;
  RxDouble opacity=.4.obs;
  RxBool notification=false.obs; 

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

}