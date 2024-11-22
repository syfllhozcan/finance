import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/add_item_widget.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/divider_widget.dart';
import 'package:flutter/material.dart';

class Drivers extends StatelessWidget {
  const Drivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Drivers"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            AddItemWidget(
              label: "Add Driver",
              onTap: () {},
              verticalMargin: 12,
            ),
            Expanded(
              child: ListView(
                children: [
                  UserListTile(
                    image: ImageService.profile_girl,
                    isActive: true,
                    isprivate: false,
                    title: "Tiana Saris",
                    subtitle: "BCA • 2468 3545 ****",
                  ),
                  const DividerWidget(),
                  UserListTile(
                    image: ImageService.profile,
                    isActive: true,
                    isprivate: true,
                    title: "Tiana Saris",
                    subtitle: "BCA • 2468 3545 ****",
                  ),
                  const DividerWidget(),
                  UserListTile(
                    image: ImageService.profile_girl,
                    isActive: true,
                    isprivate: false,
                    title: "Tiana Saris",
                    subtitle: "BCA • 2468 3545 ****",
                  ),
                  const DividerWidget(),
                  UserListTile(
                    image: ImageService.profile,
                    isActive: false,
                    isprivate: true,
                    title: "Tiana Saris",
                    subtitle: "BCA • 2468 3545 ****",
                  ),
                  const DividerWidget(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserListTile extends StatelessWidget {
  final String? image;
  final String title;
  final String? subtitle;
  final bool isActive;
  final bool isprivate;
  UserListTile({
    this.image,
    required this.title,
    this.subtitle = "",
    required this.isActive,
    this.isprivate = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: image != null
                    ? AssetImage(image!)
                    : AssetImage(ImageService
                        .noimage), //AssetImage(ImageService.profile),
              ),
              if (isprivate)
                const Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xff4F3D56), //backdrop
                      child: Icon(
                        Icons.star_sharp,
                        color: Colors.white,
                        size: 9,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title, //'Tiana Saris',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1F2C37)
                      //color: Color(0xff9CA4AB),
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle!, //'BCA • 2468 3545 ****',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff78828A),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: isActive
                  ? const Color(0xff00CF7F)
                  : const Color(0xffD8D8D8), //pasiveColor
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Text(
              isActive ? "Active" : "Passive",
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
