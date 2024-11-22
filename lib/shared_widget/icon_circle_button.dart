import 'package:flutter/material.dart';

class IconCircleButton extends StatelessWidget {
  final String image;
  final Color backgroundColor;
  final Color iconColor;
  //final String label;
  final VoidCallback onPressed;

  const IconCircleButton({
    Key? key,
    required this.image,
    required this.backgroundColor,
    required this.iconColor,
    //required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          image,
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
