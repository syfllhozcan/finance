import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  final String companyName;
  final String status;
  final String authority;
  final String icon;

  const InfoCard({
    Key? key,
    required this.companyName,
    required this.status,
    required this.authority,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xff0369A1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/logo_company.png"),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  companyName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  "Status: $status",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Authority: $authority",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            icon,
            width: 18,
            height: 18,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
