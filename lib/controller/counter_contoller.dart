import 'package:get/get.dart';


class countercontrollers extends GetxController{
  RxInt counter=1.obs;

  incrementcounter(){
    counter.value++;
    print(counter.value);
  }
  
}