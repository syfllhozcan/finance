import 'package:finance/config/image/image/images.dart';
import 'package:flutter/material.dart';

class IconButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconButton(
          image: ImageService.google, // Google ikonu için
          backgroundColor: const Color(0xffECF1F6), //Colors.white,
          iconColor: Colors.black,
          label: 'Google',
        ),
        const SizedBox(width: 32),
        _buildIconButton(
          image: ImageService.apple, // Apple ikonu için
          backgroundColor: const Color(0xffECF1F6),
          iconColor: Colors.black,
          label: 'Apple',
        ),
        const SizedBox(width: 32),
        _buildIconButton(
          image: ImageService.phone, // Phone ikonu için
          backgroundColor: const Color(0xffECF1F6),
          iconColor: Colors.black,
          label: 'Phone',
        ),
      ],
    );
  }

  Widget _buildIconButton({
    required String image,
    required Color backgroundColor,
    required Color iconColor,
    required String label,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
            /*
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            */
          ),
          child: Image.asset(
            image,
            width: 30,
            height: 30,
          ),
        ),
        /*
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey, // Yazı rengi
            fontSize: 12,
          ),
        ),
        */
      ],
    );
  }
}
