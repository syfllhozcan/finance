import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final int maxLines;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.maxLines = 1,
    this.obscureText = false,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color(0xff78828A), // hint yazı rengi
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: Colors.white, // Arka plan rengi
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xffECF1F6), // border rengi
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xffECF1F6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xFF1E5AA7), // Odaklanınca kenar rengi
              width: 1.5,
            ),
          ),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: const Color(0xff78828A),
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xff1f2c37),
        ),
      ),
    );
  }
}
