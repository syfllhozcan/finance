import 'package:flutter/material.dart';

Widget InfoText(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Color(0xff1F2C37),
      ),
    ),
  );
}
