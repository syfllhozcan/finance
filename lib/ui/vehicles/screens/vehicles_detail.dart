import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/ui/driver/screens/driver_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VehiclesDetailPage extends StatefulWidget {
  const VehiclesDetailPage({super.key});

  @override
  State<VehiclesDetailPage> createState() => _VehiclesDetailPageState();
}

class _VehiclesDetailPageState extends State<VehiclesDetailPage> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Vehicles Detail"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VehicleCard(
                  isActive: true,
                  carName: "Fortuner GR",
                  carImage: ImageService.car,
                  distance: "870",
                  onTap: () {},
                  plate: "23 AK 47"),
              const SizedBox(height: 8),
              Row(
                children: [
                  UserCard(
                    name: "Jane Cooper",
                    image: ImageService.user,
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  MapCard(
                    //image: ImageService.maps,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                "Car Detail",
                style: TextStyle(
                  color: Color(0xff1F2C37),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SwitchCard(
                iconPath: IconService.tag,
                title: "Car Status",
                switchValue: _isSwitched,
                onSwitchChanged: (bool value) {
                  setState(() {
                    _isSwitched = value;
                  });
                },
              ),
// TUV Date bölümü
              Container(
                height: 61,
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1C162E),
                        boxShadow: [
                          BoxShadow(
                            //color: const Color(0xff414141).withOpacity(0.5),
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: SvgPicture.asset(
                        IconService.zips,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "TUV Date",
                          style: TextStyle(
                            color: Color(0xff1C162E),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: w - 225,
                          child: LinearProgressIndicator(
                            minHeight: 5,
                            value: 0.7,
                            borderRadius: BorderRadius.circular(8),
                            backgroundColor: const Color(0xffF2F2F2),
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xffEFBC48),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Text(
                          "4 month",
                          style: TextStyle(
                            color: Color(0xff1C162E),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "09.Oct.20",
                          style: TextStyle(
                            color: Color(0xffc6c4ca),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "taximetre yıllık kontrolü",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "taxi uzatılma tarihi",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final String name;
  final String image;
  final VoidCallback? onTap;

  const UserCard({
    Key? key,
    required this.name,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (MediaQuery.of(context).size.width - 60) / 2,
        height: (MediaQuery.of(context).size.width - 60) / 2 * 1.125,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 36,
              backgroundImage: AssetImage(image),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class MapCard extends StatelessWidget {
  final String? image;
  final VoidCallback onTap;

  const MapCard({
    Key? key,
    this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (MediaQuery.of(context).size.width - 60) / 2,
        height: (MediaQuery.of(context).size.width - 60) / 2 * 1.125,
        decoration: BoxDecoration(
          color: const Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image ?? ImageService.maps,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class SwitchCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool switchValue;
  final ValueChanged<bool> onSwitchChanged;
  final double height;
  final double iconSize;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final Color iconColor;

  const SwitchCard({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.switchValue,
    required this.onSwitchChanged,
    this.height = 61.0,
    this.iconSize = 36.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.backgroundColor = Colors.white,
    this.iconColor = const Color(0xff1C162E),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: iconSize,
            width: iconSize,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: iconColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: SvgPicture.asset(
              iconPath,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff1C162E),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Switch(
            value: switchValue,
            onChanged: onSwitchChanged,
          ),
        ],
      ),
    );
  }
}


/*

              /*
              Container(
                height: 61,
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1C162E),
                        boxShadow: [
                          BoxShadow(
                            //color: const Color(0xff414141).withOpacity(0.5),
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: SvgPicture.asset(
                        IconService.tag,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      "Car Status",
                      style: TextStyle(
                        color: Color(0xff1C162E),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: _isSwitched,
                      //activeColor: Colors.white,
                      //activeTrackColor: const Color(0xff00CF7F),
                      onChanged: (bool value) {
                        setState(() {
                          _isSwitched = value; // Switch durumunu değiştir
                        });
                      },
                    ),
                  ],
                ),
              ),
              */
*/