import 'package:flutter/material.dart';

class MyTextComponent extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  const MyTextComponent({
    required this.text,
    this.color = Colors.blue,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
