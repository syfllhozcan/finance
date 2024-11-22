import 'package:flutter/material.dart';

class StringRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  final VoidCallback onRightTextTap;

  const StringRow({
    Key? key,
    required this.leftText,
    required this.rightText,
    required this.onRightTextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftText,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: onRightTextTap,
          child: Text(
            rightText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff0369A1),
            ),
          ),
        ),
      ],
    );
  }
}
