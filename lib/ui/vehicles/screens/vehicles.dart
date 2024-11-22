import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/vehicle_tile.dart';
import 'package:flutter/material.dart';

class VehiclesPage extends StatelessWidget {
  const VehiclesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Vehicles"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AddItemTile(
              text: "Add New Car",
              onTap: () {
                print("Add New Car tapped!");
              },
            ),
            Expanded(
              child: ListView(
                children: [
                  // kısa hali
                  VehicleTile(
                    vehicleName: "Fortuner GR",
                    vehiclePlate: "23 AK 47",
                    imagePath: ImageService.car,
                    statusText:
                        "Active", //Active veya Available ise kutu rengi yeşil oluyor. diğer türlü kutu renkleri kırmızı oluyor.
                    buttonText: "Detail Car",
                    onTap: () {
                      // Detail Car
                    },
                  ),
                  // uzun hali
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
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
          ],
        ),
      ),
    );
  }
}

class AddItemTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const AddItemTile({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffF3F3F3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xffC6C4CA),
              ),
            ),
            const SizedBox(width: 20),
            const Icon(
              Icons.add_circle_outline_rounded,
              color: Color(0xffD8D8D8),
              size: 58,
            ),
          ],
        ),
      ),
    );
  }
}
