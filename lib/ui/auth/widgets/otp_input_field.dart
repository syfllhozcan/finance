import 'package:flutter/material.dart';

class OtpInputField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final FocusNode? prevFocusNode;

  const OtpInputField({
    Key? key,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
    this.prevFocusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xffEFEEF0),
        border: Border.all(color: const Color(0xffEFEEF0)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          onChanged: (value) {
            if (value.isNotEmpty) {
              nextFocusNode?.requestFocus();
            } else {
              prevFocusNode?.requestFocus();
            }
          },
          decoration: const InputDecoration(
            counterText: "",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
