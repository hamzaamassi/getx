import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController(),fenix:false );
  }
}
