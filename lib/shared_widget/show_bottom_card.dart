import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowBottomCard extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String icon;

  const ShowBottomCard({
    required this.onTap,
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 140,
        width: (w - 64) / 2,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xffE3E9ED), width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xffE2E0E4),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xffE3E9ED), width: 1),
              ),
              child: SvgPicture.asset(
                icon, //IconService.qr,
                width: 24,
                height: 24,
              ),
            ),
            Text(
              text, // "Scan Qr",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: Color(0xff1f2c37),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
