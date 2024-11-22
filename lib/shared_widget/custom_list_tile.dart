import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  const CustomListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xff1F2C37),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
