import 'package:flutter/material.dart';

class VehicleTile extends StatelessWidget {
  final String vehicleName;
  final String vehiclePlate;
  final String imagePath;
  final String statusText;
  final String buttonText;
  final VoidCallback onTap;

  const VehicleTile({
    Key? key,
    required this.vehicleName,
    required this.vehiclePlate,
    required this.imagePath,
    required this.statusText,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Selected Vehicle",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff9CA4AB),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: statusText == "Available" || statusText == "Active"
                      ? const Color(0xff00CF7F)
                      : const Color(0xffFF4D12),
                  borderRadius: BorderRadius.circular(24),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Text(
                  statusText,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: w - 64,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vehicleName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2C2B34),
                    ),
                  ),
                  Text(
                    vehiclePlate,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff9CA4AB),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: onTap,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xff0369A1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
