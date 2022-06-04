import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

import 'utils/di/di_container.dart';
import 'utils/routes/routes.dart';
import 'utils/theme/themes.dart';

void main() {
  initDI();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MashoodPortfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: Themes.light,
      builder: (ctx, child) {
        return child!;
      },
      darkTheme: Themes.dark,
      initialRoute: AppRoutesName.splash,
      getPages: AppRoutesName.pagesList,
    );
  }
}
