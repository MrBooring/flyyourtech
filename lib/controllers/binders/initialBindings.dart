import 'package:get/get.dart';

import '../controllers/homePagecontroller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomePageController>(HomePageController(), permanent: true);
  }
}
