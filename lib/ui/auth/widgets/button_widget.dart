import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  ButtonWidget(
      {required this.text,
      required this.onPressed,
      this.color = const Color(0xFF1E5AA7), // Buton rengi
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Sabit yükseklik
      width: double.infinity, // Butonun tam genişlik kaplaması için
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color, // Mavi buton rengi
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Köşeleri yuvarlama
            ),
            elevation: 0),
        child: Text(
          text,
          style: TextStyle(
            color: textColor, // Beyaz yazı rengi
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
