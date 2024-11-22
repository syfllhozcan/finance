// üsteki 2 buton
import 'package:flutter/material.dart';

// sayfada seçilen kutular
class ColorBoxSpaceWidget extends StatelessWidget {
  final bool isSelected;
  final Color selectedColor;
  final Color unselectedColor;
  final String text;
  final VoidCallback onTap;

  const ColorBoxSpaceWidget({
    Key? key,
    required this.isSelected,
    required this.selectedColor,
    required this.unselectedColor,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: isSelected ? const Color(0xff0369A1) : Colors.white),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
            color: isSelected ? Colors.white : const Color(0xff78828A),
          ),
        ),
      ),
    );
  }
}
