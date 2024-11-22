import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const SimpleText({
    required this.title,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
    this.color = const Color(0xff1F2C37),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
