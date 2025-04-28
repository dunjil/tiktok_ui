import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  const CustomIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        decoration:
            BoxDecoration(color: Colors.white, border: Border.all(width: 0.5)),
        child: Icon(
          icon,
          color: Colors.black,
          size: 18,
        ),
      ),
    );
  }
}
