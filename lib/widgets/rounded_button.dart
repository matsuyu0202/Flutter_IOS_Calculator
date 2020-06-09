import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color fontColor;
  final Function onPressed;

  RoundedButton({this.text, this.color, this.fontColor = Colors.white, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(20.0),
      shape: CircleBorder(),
      onPressed: onPressed,
      fillColor: color,
      child: Text(
        text,
        style: TextStyle(
          color: fontColor,
          fontSize: 30.0,
        ),
      ),
    );
  }
}
