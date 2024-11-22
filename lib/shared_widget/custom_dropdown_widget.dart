import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDropdownWidget extends StatefulWidget {
  final String text;
  //final List<String> options;
  final String icon;
  final void Function(String) onChanged;
  final VoidCallback onTap;

  const CustomDropdownWidget({
    Key? key,
    required this.text,
    //required this.options,
    required this.icon,
    required this.onChanged,
    required this.onTap,
  }) : super(key: key);

  @override
  _CustomDropdownWidgetState createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xffECF1F6),
          ),
        ),
        child: Row(
          children: [
            Text(
              widget.text,
              style: const TextStyle(
                color: Color(0xff78828A),
                fontSize: 12,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              widget.icon,
              colorFilter:
                  const ColorFilter.mode(Color(0xff1f2c37), BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }
}
