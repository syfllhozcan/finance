import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScanOptionWidget extends StatelessWidget {
  final String icon;
  final String label;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const ScanOptionWidget({
    required this.icon,
    required this.label,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Ekran genişliğini alıyoruz
    final double w = (MediaQuery.of(context).size.width - 88) / 3;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: w,
        height: w * 1.2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: isSelected
              ? Border.all(
                  color: Colors.white,
                  width: 2) // Seçiliyse beyaz çerçeve ekleyelim
              : null,
        ),
        child: Stack(
          children: [
            if (isSelected) // Seçili durumda ikonu gösteriyoruz
              const Positioned(
                top: 2,
                right: 2,
                child: Icon(
                  Icons.check_circle_outline,
                  //color: Color(0xff0369A1),
                  //color: Color(0xff1BD6AD),
                  color: Colors.white,
                  size: 24,
                ),
              ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      icon,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
