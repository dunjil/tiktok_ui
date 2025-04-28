import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const CustomFlatButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        decoration:
            BoxDecoration(color: Colors.white, border: Border.all(width: 0.5)),
        child: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
