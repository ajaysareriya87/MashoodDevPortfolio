import 'package:get/get.dart';

import '../../../../utils/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed(AppRoutesName.home!);
    });
    super.onInit();
  }
}
