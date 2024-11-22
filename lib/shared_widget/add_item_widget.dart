import 'package:flutter/material.dart';

class AddItemWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color iconBackgroundColor;
  final Color textColor;
  final VoidCallback? onTap;
  final double verticalMargin;

  const AddItemWidget({
    Key? key,
    required this.label,
    this.icon = Icons.add_rounded,
    this.iconBackgroundColor = const Color(0xffECF1F6),
    this.textColor = const Color(0xff1F2C37),
    this.onTap,
    this.verticalMargin = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: verticalMargin),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: iconBackgroundColor,
              radius: 24,
              child: Icon(
                icon,
                size: 24,
                color: textColor,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
