import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/divider_widget.dart';
import 'package:finance/shared_widget/info_text.dart';
import 'package:finance/shared_widget/profile_avatar.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 60),
              /*
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(ImageService.profile_girl),
              ),
              */
              ProfileAvatar(
                image: ImageService.profile_girl,
                onTap: () {},
                isAdmin: false,
              ),
              const SizedBox(height: 11),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SimpleText(
                    title: "Full Name",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  InfoText("Tiana Saris"),
                  const DividerWidget(),
                  const SizedBox(height: 25),
                  const SimpleText(
                    title: "Email",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  InfoText("Brooklynsimmons@gmail.com"),
                  const DividerWidget(),
                  const SizedBox(height: 25),
                  const SimpleText(
                    title: "Phone Number",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  InfoText("+1 3712 3789"),
                  const DividerWidget(),
                  const SizedBox(height: 25),
                  const SimpleText(
                    title: "Address",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  InfoText(
                      "711 Leavenworth Apt. # 47 San \nFrancisco, CA 94109"),
                  const DividerWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
