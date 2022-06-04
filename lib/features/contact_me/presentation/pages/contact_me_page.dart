import 'package:flutter/material.dart';

import '../../../../utils/responsive/app_responsive.dart';
import '../ui/desktop/contact_desktop_view.dart';
import '../ui/mobile/contact_mobile_view.dart';
import '../ui/tablet/contact_tablet_view.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppResponsiveView(
      mobileLayout: ContactMobileView(),
      desktopLayout: ContactDesktopView(),
      tabletLayout: ContactTabletView(),
    );
  }
}
