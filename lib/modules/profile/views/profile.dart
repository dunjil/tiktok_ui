import 'package:flutter/material.dart';
import 'package:tiktok_app/modules/profile/views/widgets/profile_stats_widget.dart';
import 'package:tiktok_app/utils/app_assets.dart';
import 'package:tiktok_app/utils/widgets/custom_flat_button.dart';
import 'package:tiktok_app/utils/widgets/custom_icon_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Icon(Icons.person_add_alt),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Jacob West",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_drop_down_sharp)
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(Icons.more_horiz))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(AppImages.profileImage),
                radius: 60,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "@jacob_w",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfileStatsWidget(title: "Following", count: "14"),
                  ProfileStatsWidget(title: "Followers", count: "38"),
                  ProfileStatsWidget(title: "Likes", count: "91"),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomFlatButton(
                    title: "Edit Profile",
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomIconButton(
                    icon: Icons.bookmark_add_outlined,
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
