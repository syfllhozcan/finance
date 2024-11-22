import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Sign In"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Lorem Ipsum dolor sit amet, consectetur.",
                style: TextStyle(
                  color: Color(0xff78828A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 24),
              const SimpleText(title: "Email Address"),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintText: "Email Address",
                controller: emailController,
              ),
              const SizedBox(height: 16),
              const SimpleText(title: "Password"),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 16),
              CheckBoxWidget(
                value: true,
                onChanged: (value) {},
                label: "Remember Me",
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: "Sign In",
                onPressed: () {},
              ),
              const SizedBox(height: 24),
              StringRow(
                leftText: "Don't have an account?",
                rightText: "Sign Up",
                onRightTextTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
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
                      'Or Sign In with',
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
              IconButtonRow(),
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
            fontSize: 12, // Yazı boyutu
            fontWeight: FontWeight.w300,
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
          fontSize: 16, // Yazı boyutu
          color: Colors.black, // Metin rengi
        ),
      ),
    );
  }
}

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

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  ButtonWidget(
      {required this.text,
      required this.onPressed,
      this.color = const Color(0xFF1E5AA7), // Buton rengi
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Sabit yükseklik
      width: double.infinity, // Butonun tam genişlik kaplaması için
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color, // Mavi buton rengi
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Köşeleri yuvarlama
            ),
            elevation: 0),
        child: Text(
          text,
          style: TextStyle(
            color: textColor, // Beyaz yazı rengi
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class StringRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  final VoidCallback onRightTextTap;

  const StringRow({
    Key? key,
    required this.leftText,
    required this.rightText,
    required this.onRightTextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftText,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: onRightTextTap,
          child: Text(
            rightText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff0369A1),
            ),
          ),
        ),
      ],
    );
  }
}

class IconButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconButton(
          image: ImageService.google, // Google ikonu için
          backgroundColor: const Color(0xffECF1F6), //Colors.white,
          iconColor: Colors.black,
          label: 'Google',
        ),
        const SizedBox(width: 32),
        _buildIconButton(
          image: ImageService.apple, // Apple ikonu için
          backgroundColor: const Color(0xffECF1F6),
          iconColor: Colors.black,
          label: 'Apple',
        ),
        const SizedBox(width: 32),
        _buildIconButton(
          image: ImageService.phone, // Phone ikonu için
          backgroundColor: const Color(0xffECF1F6),
          iconColor: Colors.black,
          label: 'Phone',
        ),
      ],
    );
  }

  Widget _buildIconButton({
    required String image,
    required Color backgroundColor,
    required Color iconColor,
    required String label,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            image,
            width: 30,
            height: 30,
          ),
        ),
      ],
    );
  }
}


//////////////////////////////////////////////
/*
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sign In",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Lorem Ipsum dolor sit amet, consectetur.",
                style: TextStyle(
                  color: Color(0xff78828A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Email Address",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1F2C37),
                ),
              ),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintText: "Email Address",
                controller: emailController,
              ),
              const SizedBox(height: 16),
              const Text(
                "Password ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1F2C37),
                ),
              ),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    "Remember Me",
                    style: TextStyle(fontSize: 14),
                  ),
                  const Spacer(),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: "Sign In",
                onPressed: () {},
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      "Sign Up",
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
                      'Or Sign In with',
                      style: TextStyle(
                        color: Colors.grey,
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
              IconButtonRow(),
            ],
          ),
        ),
      ),
    );
  }
}

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
            fontSize: 12, // Yazı boyutu
            fontWeight: FontWeight.w300,
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
          fontSize: 16, // Yazı boyutu
          color: Colors.black, // Metin rengi
        ),
      ),
    );
  }
}

class IconButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconButton(
          image: ImageService.google, // Google ikonu için
          backgroundColor: const Color(0xffECF1F6), //Colors.white,
          iconColor: Colors.black,
          label: 'Google',
        ),
        const SizedBox(width: 32),
        _buildIconButton(
          image: ImageService.apple, // Apple ikonu için
          backgroundColor: const Color(0xffECF1F6),
          iconColor: Colors.black,
          label: 'Apple',
        ),
        const SizedBox(width: 32),
        _buildIconButton(
          image: ImageService.phone, // Phone ikonu için
          backgroundColor: const Color(0xffECF1F6),
          iconColor: Colors.black,
          label: 'Phone',
        ),
      ],
    );
  }

  Widget _buildIconButton({
    required String image,
    required Color backgroundColor,
    required Color iconColor,
    required String label,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            image,
            width: 30,
            height: 30,
          ),
        ),
      ],
    );
  }
}

class BlackTitle extends StatelessWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const BlackTitle({
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

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  ButtonWidget(
      {required this.text,
      required this.onPressed,
      this.color = const Color(0xFF1E5AA7), // Buton rengi
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Sabit yükseklik
      width: double.infinity, // Butonun tam genişlik kaplaması için
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color, // Mavi buton rengi
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Köşeleri yuvarlama
            ),
            elevation: 0),
        child: Text(
          text,
          style: TextStyle(
            color: textColor, // Beyaz yazı rengi
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class StringRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  final VoidCallback onRightTextTap;

  const StringRow({
    Key? key,
    required this.leftText,
    required this.rightText,
    required this.onRightTextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftText,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: onRightTextTap,
          child: Text(
            rightText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff0369A1),
            ),
          ),
        ),
      ],
    );
  }
}

*/
////////////////////////////////////////////////

