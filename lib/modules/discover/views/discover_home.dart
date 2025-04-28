import 'package:flutter/material.dart';

class DiscoverHome extends StatelessWidget {
  const DiscoverHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
          child: Text(
        "Discover Home",
        style: TextStyle(color: Colors.black, fontSize: 25),
      )),
    );
  }
}
