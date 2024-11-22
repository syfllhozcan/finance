import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:finance/shared_widget/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsSettingPaga extends StatefulWidget {
  const NotificationsSettingPaga({super.key});

  @override
  State<NotificationsSettingPaga> createState() =>
      _NotificationsSettingPagaState();
}

class _NotificationsSettingPagaState extends State<NotificationsSettingPaga> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Notifications Setting"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 55),
            const SimpleText(title: "Set your notification"),
            const SizedBox(height: 24),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      IconService.notif_light,
                      color: Color(0xff1F2C37),
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      "Show Notifications",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff1F2C37),
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: _isSwitched,
                      //activeColor: Colors.white,
                      //activeTrackColor: const Color(0xff00CF7F),
                      onChanged: (bool value) {
                        setState(() {
                          _isSwitched = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const DividerWidget(),
              ],
            ),
            InkWell(
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconService.activity,
                        colorFilter: const ColorFilter.mode(
                          Color(0xff1f2c37),
                          BlendMode.srcIn,
                        ),
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        "Financial Activity",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff1F2C37),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const DividerWidget(),
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconService.activity,
                        //colorFilter:  ColorFilter.mode(Color(0xff1F2C37), BlendMode.srcIn),
                        color: const Color(0xff1F2C37),
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        "Non-financial Activity",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff1F2C37),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const DividerWidget(),
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconService.shield_done,
                        //colorFilter:  ColorFilter.mode(Color(0xff1F2C37), BlendMode.srcIn),
                        color: const Color(0xff1F2C37),
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        "Security",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff1F2C37),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const DividerWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
