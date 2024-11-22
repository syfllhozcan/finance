import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/vehicle_tile.dart';
import 'package:flutter/material.dart';

class SelectVehiclesPage extends StatelessWidget {
  const SelectVehiclesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Select Vehicles"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Expanded(
          child: ListView(
            children: [
              // kısa hali
              VehicleTile(
                vehicleName: "Fortuner GR",
                vehiclePlate: "23 AK 47",
                imagePath: ImageService.car,
                statusText:
                    "Available", //Active veya Available ise kutu rengi yeşil oluyor. diğer türlü kutu renkleri kırmızı oluyor.
                buttonText: "Select Car",
                onTap: () {
                  // Select Car
                },
              ),

              // uzun hali
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                            color: const Color(0xffFF4D12),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          child: const Text(
                            "Not Available",
                            style: TextStyle(
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
                        ImageService.car,
                        fit: BoxFit.cover,
                        width: w - 64,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fortuner GR",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2C2B34),
                              ),
                            ),
                            Text(
                              "23 AK 47",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff9CA4AB),
                              ),
                            )
                          ],
                        ),
                        Container(
                          //height: 25,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xffB3C9D5),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Text(
                            "Select Car",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
