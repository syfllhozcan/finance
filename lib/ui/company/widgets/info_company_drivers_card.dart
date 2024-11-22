import 'package:finance/config/image/icon/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCompanyDriversCard extends StatelessWidget {
  final String title;
  final String count;
  final List<String> images;

  InfoCompanyDriversCard({
    required this.title,
    required this.count,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      width: (w - 60) / 2,
      height: (w - 60) / 2,
      padding: const EdgeInsets.all(16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0369A1),
                ),
              ),
              SvgPicture.asset(
                IconService.down,
                width: 18,
                height: 18,
                color: const Color(0xff979797),
              ),
            ],
          ),
          SizedBox(
            height: 42,
            child: Stack(
              children: [
                // İlk 3 resmi göster
                for (int i = 0; i < images.length && i < 3; i++)
                  Positioned(
                    left: i * 31,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(images[i]),
                        radius: 20,
                      ),
                    ),
                  ),
                // Fazladan resimler için "+X" etiketi göster
                if (images.length > 3)
                  Positioned(
                    left: 3 * 31,
                    child: CircleAvatar(
                      radius: 21,
                      //backgroundColor: Colors.white,
                      backgroundColor: const Color(0xffECF1F6),
                      child: Center(
                        child: Text(
                          '+${images.length - 3}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                count,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C162E),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xffC6C4CA), //tileSubtitleColor
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
