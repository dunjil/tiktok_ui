import 'package:flutter/material.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

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
        "Chat Home",
        style: TextStyle(color: Colors.black, fontSize: 25),
      )),
    );
  }
}
