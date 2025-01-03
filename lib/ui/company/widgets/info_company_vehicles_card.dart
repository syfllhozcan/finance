import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCompanyVehiclesCard extends StatelessWidget {
  const InfoCompanyVehiclesCard({
    super.key,
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
              const Text(
                "Vehicles",
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
          Expanded(
              child: Image.asset(
            ImageService.car,
          )),
          const Row(
            children: [
              Text(
                "27",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C162E),
                ),
              ),
              SizedBox(width: 6),
              Text(
                "Vehicles",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xffC6C4CA),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
