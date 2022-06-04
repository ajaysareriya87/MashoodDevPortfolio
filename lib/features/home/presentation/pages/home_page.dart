import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../../../../utils/responsive/app_responsive.dart';
import '../controller/home_controller.dart';
import '../ui/desktop/home_desktop_view.dart';
import '../ui/mobile/home_mobile_view.dart';
import '../ui/tablet/home_tablet_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return AppResponsiveView(
      desktopLayout: HomeDesktopView(controller: _homeController),
      mobileLayout: HomeMobileView(controller: _homeController),
      tabletLayout: HomeTabletView(controller: _homeController),
    );
  }
}
