import 'dart:ui';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';
import 'package:finance/ui/auth/widgets/otp_input_field.dart';
import 'package:finance/ui/auth/widgets/string_row.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "OTP"),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Enter OTP",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        "We have just sent you a 4 digit code via your \n email ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff78828A)),
                  ),
                  TextSpan(
                    text: "example@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1c2f37),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return OtpInputField(
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  nextFocusNode: index < 3 ? _focusNodes[index + 1] : null,
                  prevFocusNode: index > 0 ? _focusNodes[index - 1] : null,
                );
              }),
            ),
            const SizedBox(height: 38),
            ButtonWidget(
              text: "Continue",
              onPressed: () {
                Navigator.pushNamed(context, '/employment');
              },
            ),
            const SizedBox(height: 16),
            StringRow(
              leftText: "Didn’t receive code?",
              rightText: "Resend Code",
              onRightTextTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class StiringFormRow extends StatelessWidget {
  String title;
  String text;
  StiringFormRow({
    required this.title,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xff9CA4AB),
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xff1F2C37),
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}

class ConfirmationShowDialog extends StatelessWidget {
  const ConfirmationShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              color: const Color(0xff4F3D56).withOpacity(0.63),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 48,
              height: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "I agree to the "),
                          TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(color: Color(0xff1F2C37))),
                          TextSpan(text: " and "),
                          TextSpan(
                              text: "Conditions of Use ",
                              style: TextStyle(color: Color(0xff1F2C37))),
                          TextSpan(
                              text:
                                  "including consent to electronic communications and I affirm that the information provided is my own."),
                        ],
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff78828A),
                          fontWeight: FontWeight.w300,
                          height: 1.5,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ButtonWidget(
                    text: "Agree and continue",
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(height: 16),
                  ButtonWidget(
                    text: "Disagree",
                    color: Colors.white,
                    textColor: const Color(0xFF1E5AA7),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
