import 'package:get/get.dart';
import 'package:i_care/controllers/auth_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}
