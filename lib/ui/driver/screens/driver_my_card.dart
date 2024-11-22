import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DriverMyCardPage extends StatelessWidget {
  const DriverMyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 12),
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(ImageService.profile_girl),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Tiana Saris",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    //color: Color(0xff343434),
                    color: Color(0xff1F2C37),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "@veys",
                  style: TextStyle(
                    fontSize: 16,
                    //color: Color(0xff8E8E8E),
                    color: Color(0xff78828A),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
            Container(
              width: w * 0.6,
              height: w * 0.6,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: QrImageView(
                data: "@veys",
                //data: '1234567890',
                version: QrVersions.auto,
                //size: 100.0,
              ),
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildIconContainer(
                  iconPath: IconService.qr,
                  onTap: () {
                    print("QR");
                  },
                ),
                buildIconContainer(
                  iconPath: IconService.vector,
                  onTap: () {
                    print("Vector");
                  },
                ),
                buildIconContainer(
                  iconPath: IconService.share,
                  onTap: () {
                    print("Share");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildIconContainer(
    {required String iconPath, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 72,
      height: 72,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          iconPath,
          color: const Color(0xff1f2c37),
        ),
      ),
    ),
  );
}
