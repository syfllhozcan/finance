import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/custom_list_tile.dart';
import 'package:finance/shared_widget/divider_widget.dart';
import 'package:finance/shared_widget/info_card.dart';
import 'package:finance/shared_widget/profile_avatar.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DriverProfilePage extends StatelessWidget {
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
              const SizedBox(height: 50),
              ProfileAvatar(
                image: ImageService.profile_girl,
                onTap: () {},
              ),
              const SizedBox(height: 14),
              const Text(
                "Tiana Saris",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1f2c37),
                ),
              ),
              const Text(
                "@Brokklyn",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff78828A),
                ),
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SimpleText(
                    title: "Personal Info",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  CustomListTile(
                    icon: IconService.profile,
                    title: "Your Profile",
                    onTap: () {},
                  ),
                  const DividerWidget(),
                  CustomListTile(
                    icon: IconService.download,
                    title: "History Transaction",
                    onTap: () {},
                  ),
                  const DividerWidget(),
                  CustomListTile(
                    icon: IconService.scan,
                    title: "Scan Document",
                    onTap: () {},
                  ),
                  const DividerWidget(),
                  const SizedBox(height: 30),
                  const SimpleText(
                    title: "Security",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          IconService.lock,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 16),
                        const Text(
                          "Change Password",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff1F2C37),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xff00CF7F),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Text(
                            "Confirmed",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const DividerWidget(),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          IconService.lock,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 16),
                        const Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff1F2C37),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const DividerWidget(),
                  const SizedBox(height: 30),
                  const SimpleText(
                    title: "Company",
                    color: Color(0xff9CA4AB),
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(height: 16),
                  InfoCard(
                    companyName: "Luxury Taxi GmbH",
                    status: "Active",
                    authority: "Driver",
                    icon: IconService.down,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
