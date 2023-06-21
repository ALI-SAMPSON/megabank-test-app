import 'package:fbn_app/presentation/modules/home/views/home_page.dart';
import 'package:fbn_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/di.dart';
import 'presentation/resources/app_colors.dart';
import 'presentation/resources/app_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: TAppStrings.tAppName,
      theme: ThemeData(
        primarySwatch: TAppColors.tPrimarySwatch,
      ),
      initialBinding: AppBinding(),
      initialRoute: AppPages.INITIAL_ROUTE,
      getPages: AppPages.routes,
    );
  }
}
