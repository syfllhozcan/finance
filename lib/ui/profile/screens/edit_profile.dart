import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/profile_avatar.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';
import 'package:finance/ui/auth/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Edit Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 40),
              ProfileAvatar(
                image: ImageService.profile_girl,
                onTap: () {},
                isAdmin: true,
                onCameraTap: () {},
              ),
              const SizedBox(height: 11),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SimpleText(title: "Full Name"),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    hintText: "Tiana Saris",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 25),
                  const SimpleText(title: "Email"),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    hintText: "Brooklynsimmons@gmail.com",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 25),
                  const SimpleText(title: "Phone Number"),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    hintText: "+1 3712 3789",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 25),
                  const SimpleText(title: "Address"),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    hintText:
                        "711 Leavenworth Apt. # 47 San Francisco, \nCA 94109",
                    controller: TextEditingController(),
                    maxLines: 5,
                  ),
                  const SizedBox(height: 16),
                  ButtonWidget(
                    text: "Save Change",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
