import 'package:flutter/material.dart';

import '../../../../utils/responsive/app_responsive.dart';
import '../ui/desktop/about_me_desktop_view.dart';
import '../ui/mobile/about_me_mobile_view.dart';
import '../ui/tablet/about_me_tablet_view.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppResponsiveView(
      mobileLayout: AboutMeMobileView(),
      desktopLayout: AboutMeDesktopView(),
      tabletLayout: AboutMeTabletView(),
    );
  }
}
