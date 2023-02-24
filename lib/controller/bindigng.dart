import 'package:get/get.dart';

import 'NormalController.dart';

class NoteBind implements Bindings {
  @override
  void dependencies() {
    Get.put<NormalController>(NormalController());
  }
}
