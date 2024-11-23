import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldIconWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final int maxLines;
  final String icon;
  const TextFieldIconWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.maxLines = 1,
    this.obscureText = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 55,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xff78828A),
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xffECF1F6),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xffECF1F6),
              //width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xFF1E5AA7), // Odaklanınca kenar rengi
              width: 1.5,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(icon
                //IconService.calendar,
                ),
          ),
        ),
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xff1f2c37),
        ),
      ),
    );
  }
}
