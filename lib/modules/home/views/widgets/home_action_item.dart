import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeActionItem extends StatelessWidget {
  final String iconAsset;
  final String text;
  final Function onPressed;
  const HomeActionItem(
      {super.key,
      required this.onPressed,
      this.text = "",
      required this.iconAsset});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 4),
        child: Column(
          children: [
            // Image.asset(
            //   iconAsset,
            // ),
            SvgPicture.asset(
              iconAsset,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
