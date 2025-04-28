import 'package:flutter/material.dart';
import 'package:tiktok_app/modules/app_navigation/controller/app_navigation_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppNavigationItem extends StatelessWidget {
  final String title;
  final String assetUrl;
  final bool isActive;
  final bool isColorless;
  final Function onPressed;
  const AppNavigationItem({
    super.key,
    required this.title,
    required this.onPressed,
    required this.assetUrl,
    this.isActive = false,
    this.isColorless = false,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppNavigationController>(builder: (appNavController) {
      return InkWell(
        onTap: () {
          onPressed();
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(
              //   assetUrl,
              //   color: (isActive && !isColorless)
              //       ? Colors.white
              //       : isColorless
              //           ? null
              //           : Colors.grey,
              // ),
              SvgPicture.asset(
                assetUrl,
                height: 25,
                width: 25,
                color: (isActive && !isColorless)
                    ? Colors.white
                    : isColorless
                        ? null
                        : Colors.grey,
                semanticsLabel: 'Red dash paths',
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  color: isActive ? Colors.white : Colors.grey,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
