import 'package:flutter/material.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;

  CheckBoxWidget({
    required this.value,
    required this.onChanged,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 14),
        ),
        const Spacer(),
        const Text(
          "Forgot Password?",
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
