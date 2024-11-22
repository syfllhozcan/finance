import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(
                'assets/images/profile_girl.png'), // ImageService.profile_girl
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff9CA4AB),
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Sophia Calzoni',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1F2C37),
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/images/notification1.png', // ImageService.notification
            width: 24,
            height: 24,
            //color: const Color(0xff543B58),
          ),
        ],
      ),
    );
  }
}
