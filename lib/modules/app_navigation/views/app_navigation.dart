import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_app/modules/app_navigation/controller/app_navigation_controller.dart';
import 'package:tiktok_app/modules/app_navigation/views/widgets/app_navigation_item.dart';
import 'package:get/get.dart';
import 'package:tiktok_app/utils/app_assets.dart';

class AppNavigation extends StatelessWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppNavigationController>(builder: (appNavController) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
      ));
      return Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(color: Colors.black),
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            children: [
              Expanded(
                child: AppNavigationItem(
                    title: "Home",
                    assetUrl: AppSvgIcons.homeSVGIcon,
                    isActive: appNavController.currentIndex == 0,
                    onPressed: () {
                      appNavController.changeScreenIndex(0);
                    }),
              ),
              Expanded(
                child: AppNavigationItem(
                    title: "Discover",
                    assetUrl: AppSvgIcons.searchSVGIcon,
                    isActive: appNavController.currentIndex == 1,
                    onPressed: () {
                      appNavController.changeScreenIndex(1);
                    }),
              ),
              Expanded(
                child: AppNavigationItem(
                    title: "",
                    assetUrl: AppSvgIcons.createSVGIcon,
                    isActive: true,
                    isColorless: true,
                    onPressed: () {
                      appNavController.changeScreenIndex(2);
                    }),
              ),
              Expanded(
                child: AppNavigationItem(
                    title: "Inbox",
                    assetUrl: AppSvgIcons.chatSVGIcon,
                    isActive: appNavController.currentIndex == 3,
                    onPressed: () {
                      appNavController.changeScreenIndex(3);
                    }),
              ),
              Expanded(
                child: AppNavigationItem(
                    title: "Me",
                    assetUrl: AppSvgIcons.accountSVGIcon,
                    isActive: appNavController.currentIndex == 4,
                    onPressed: () {
                      appNavController.changeScreenIndex(4);
                    }),
              ),
            ],
          ),
        ),
        body: appNavController.navigationScreens[appNavController.currentIndex],
      );
    });
  }
}
