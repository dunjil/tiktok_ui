import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_app/modules/chat/views/chat_home.dart';
import 'package:tiktok_app/modules/create/views/create_home.dart';
import 'package:tiktok_app/modules/discover/views/discover_home.dart';
import 'package:tiktok_app/modules/home/views/home.dart';
import 'package:tiktok_app/modules/profile/views/profile.dart';

class AppNavigationController extends GetxController {
  int currentIndex = 0;

  changeScreenIndex(int index) {
    currentIndex = index;
    update();
  }

  List<Widget> navigationScreens = [
    Home(),
    DiscoverHome(),
    CreateHome(),
    ChatHome(),
    Profile(),
  ];
}
