import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/icon_circle_button.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';
import 'package:finance/shared_widget/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Sign Up"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Lorem Ipsum dolor sit amet, consectetur.",
                style: TextStyle(
                    color: Color(0xff78828A),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 24),
              const SimpleTitle(title: "Username"),
              /*
              const Text(
                "Username",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              */
              const SizedBox(height: 8),
              TextFieldWidget(
                hintText: "Username",
                controller: usernameController,
              ),
              const SizedBox(height: 16),
              const Text(
                "Email Address",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintText: "Email Address",
                controller: emailController,
              ),
              const SizedBox(height: 16),
              const SimpleTitle(title: "Password"),
              /*
              const Text(
                "Password",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              */
              const SizedBox(height: 8),
              TextFieldWidget(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: "Sign Up",
                onPressed: () {
                  Navigator.pushNamed(context, '/otp');
                },
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0369A1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffE3E9ED),
                      thickness: 1,
                      indent: 20,
                      endIndent: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or Sign Up with',
                      style: TextStyle(
                        color: Color(0xff9CA4AB),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xffE3E9ED),
                      thickness: 1,
                      endIndent: 20,
                      indent: 5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconCircleButton(
                      image: ImageService.google, // Google ikonu için
                      backgroundColor: const Color(0xffECF1F6), //Colors.white,
                      iconColor: Colors.black,
                      //label: 'Google',
                      onPressed: () {}),
                  const SizedBox(width: 32),
                  IconCircleButton(
                      image: ImageService.apple, // Apple ikonu için
                      backgroundColor: const Color(0xffECF1F6),
                      iconColor: Colors.black,
                      //label: 'Apple',
                      onPressed: () {}),
                  const SizedBox(width: 32),
                  IconCircleButton(
                      image: ImageService.phone, // Phone ikonu için
                      backgroundColor: const Color(0xffECF1F6),
                      iconColor: Colors.black,
                      //label: 'Phone',
                      onPressed: () {}),
                ],
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "By signing up you agree to our "),
                      TextSpan(
                        text: "Terms",
                        style: TextStyle(
                          color: Color(0xff1f2c37),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(text: " and "),
                      TextSpan(
                        text: "Conditions of Use",
                        style: TextStyle(
                          color: Color(0xff1F2C37),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleTitle extends StatelessWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const SimpleTitle({
    required this.title,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
    this.color = const Color(0xff1F2C37),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
