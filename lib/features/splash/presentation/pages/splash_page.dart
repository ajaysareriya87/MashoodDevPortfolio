import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../../../../utils/responsive/app_responsive.dart';
import '../controller/splash_controller.dart';
import '../ui/desktop/splash_desktop_view.dart';
import '../ui/mobile/splash_mob_view.dart';
import '../ui/tablet/splash_tab_view.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final _splashController = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return const AppResponsiveView(
      desktopLayout: SplashDesktopView(),
      mobileLayout: SplashMobileView(),
      tabletLayout: SplashTabletView(),
    );
  }
}
