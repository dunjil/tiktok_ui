import 'package:flutter/material.dart';

class CreateHome extends StatelessWidget {
  const CreateHome({super.key});

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
        "Create Home",
        style: TextStyle(color: Colors.black, fontSize: 25),
      )),
    );
  }
}
