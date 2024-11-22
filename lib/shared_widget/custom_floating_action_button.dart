import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomFloatingActionButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63,
      height: 63,
      child: FloatingActionButton(
        backgroundColor: const Color(0xff0369A1),
        shape: const CircleBorder(),
        onPressed: onPressed,
        child: const Icon(
          Icons.add_box_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
