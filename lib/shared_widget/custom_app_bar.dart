import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; // Başlık parametresi
  final VoidCallback? onBackPressed;
  final Color backgroundColor;
  final double elevation;
  final List<Widget>? actions;

  const CustomAppBar({
    Key? key,
    required this.title, // Başlık zorunlu bir parametre
    this.onBackPressed,
    this.backgroundColor = Colors.white,
    this.elevation = 0,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: onBackPressed ?? () => Navigator.pop(context),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
