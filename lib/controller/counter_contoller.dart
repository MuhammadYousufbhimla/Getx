import 'package:get/get.dart';


class countercontrollers extends GetxController{
  RxInt counter=1.obs;
  RxDouble opacity=.4.obs;
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

}