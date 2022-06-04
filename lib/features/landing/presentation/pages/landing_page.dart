import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/responsive/app_responsive.dart';
import '../controller/landing_controller.dart';
import '../ui/desktop/landing_desktop_view.dart';
import '../ui/mobile/landing_mobile_view.dart';
import '../ui/tablet/landing_tablet_view.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  final _landingController = Get.find<LandingController>();

  @override
  Widget build(BuildContext context) {
    return AppResponsiveView(
      desktopLayout: LandingDesktopView(
        controller: _landingController,
      ),
      mobileLayout: LandingMobileView(
        controller: _landingController,
      ),
      tabletLayout: LandingTabletView(
        controller: _landingController,
      ),
    );
  }
}
