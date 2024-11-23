import 'package:finance/shared_widget/simple_text.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';
import 'package:finance/shared_widget/text_field_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: const Color(0xffF2F2F5),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Color(0xff1f2c37),
                        size: 24,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1f2c37),
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Recover your account password",
                        style: TextStyle(
                          color: Color(0xff9CA4AB),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                const SimpleText(title: "E-mail"),
                const SizedBox(height: 8),
                TextFieldWidget(
                  hintText: "Enter your email address",
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 48),
                ButtonWidget(
                  text: "Next",
                  onPressed: () {
                    Navigator.pushNamed(context, '/create_new_password');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
