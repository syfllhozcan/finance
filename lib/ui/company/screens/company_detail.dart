import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/divider_widget.dart';
import 'package:finance/shared_widget/info_text.dart';
import 'package:finance/shared_widget/profile_avatar.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:flutter/material.dart';

class CompanyDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Company"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 60),
              ProfileAvatar(
                image: ImageService.logo_company,
                onTap: () {},
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SimpleText(
                    title: "Company Name",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  InfoText("Luxury Taxi GmbH"),
                  const DividerWidget(),
                  const SizedBox(height: 25),
                  const SimpleText(
                    title: "Email",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  InfoText("info@luxurytaxi.com"),
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
