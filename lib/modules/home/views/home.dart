import 'package:flutter/material.dart';
import 'package:tiktok_app/modules/home/views/widgets/home_action_item.dart';
import 'package:tiktok_app/utils/app_assets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: AssetImage(AppPngIcons.homePageBackground),
                          fit: BoxFit.cover)),
                  width: 45,
                  height: 45,
                ),
                Positioned(
                  bottom: -10,
                  right: 8,
                  child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
          HomeActionItem(
            onPressed: () {},
            iconAsset: AppSvgIcons.heartSVGIcon,
            text: "328.7K",
          ),
          HomeActionItem(
            onPressed: () {},
            iconAsset: AppSvgIcons.messageSVGIcon,
            text: "578",
          ),
          HomeActionItem(
            onPressed: () {},
            iconAsset: AppSvgIcons.shareSVGIcon,
            text: "Share",
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(AppPngIcons.homePageBackground),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(style: TextStyle(fontSize: 14), children: [
                  TextSpan(
                      text: "Following  |   ",
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "For you", style: TextStyle(color: Colors.white)),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
