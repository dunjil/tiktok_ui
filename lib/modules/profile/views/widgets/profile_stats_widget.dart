import 'package:flutter/material.dart';

class ProfileStatsWidget extends StatelessWidget {
  final String count;
  final String title;
  ProfileStatsWidget({required this.count, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            count,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
