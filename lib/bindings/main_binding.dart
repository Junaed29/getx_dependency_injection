import 'package:get/get.dart';
import 'package:getx_dependency_injection/controller/home_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
