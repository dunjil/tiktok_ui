import 'package:flutter/material.dart';
import 'package:tiktok_app/modules/app_navigation/controller/app_navigation_controller.dart';
import 'package:tiktok_app/modules/app_navigation/views/app_navigation.dart';
import 'package:get/get.dart';

void main() {
  Get.put(AppNavigationController());
  runApp(const MyTikTokApp());
}

class MyTikTokApp extends StatelessWidget {
  const MyTikTokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      defaultTransition: Transition.fade,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppNavigation(),
    );
  }
}
