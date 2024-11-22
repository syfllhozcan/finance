import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DriverDetailPage extends StatelessWidget {
  const DriverDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Driver Detail"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            ContactCard(
              onTap: () {
                print("Kart tıklandı");
              },
              image: 'assets/images/profile_girl.png',
              userName: 'Tiana Saris',
              number: '+1 3712 3789',
              phoneCall: () {
                print("Telefon araması başlatıldı");
              },
              messageWrite: () {
                print("Mesaj yazma ekranı açıldı");
              },
            ),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Balance",
                            style: TextStyle(
                              color: Color(0xffC6C4CA),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "€ 46,438.00",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1C162E),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        //height: 25,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xff0369A1),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          "Detail",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  VehicleCard(
                    isActive: true,
                    carImage: ImageService.car,
                    carName: "Fortuner Gr",
                    plate: "23 AK 47",
                    distance: "870",
                    onTap: () {},
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Transactions",
                        style: TextStyle(
                          color: Color(0xff1c162e),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        //height: 25,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xff0369A1),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          "Detail",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        TransectionAmountTile(
                          amount: 500,
                          title: "Repair",
                          date: "06-03-2019",
                          icon: IconService.game,
                        ),
                        TransectionAmountTile(
                          amount: 500,
                          title: "Repair",
                          date: "06-03-2019",
                          icon: IconService.game,
                        ),
                        TransectionAmountTile(
                          amount: 200,
                          title: "Washing",
                          date: "06-03-2019",
                          icon: IconService.shopping,
                          isBilled: true,
                        ),
                        TransectionAmountTile(
                          amount: 500,
                          title: "Repair",
                          date: "06-03-2019",
                          icon: IconService.game,
                        ),
                        TransectionAmountTile(
                          amount: 500,
                          title: "Repair",
                          date: "06-03-2019",
                          icon: IconService.game,
                        ),
                        TransectionAmountTile(
                          amount: 200,
                          title: "Washing",
                          date: "06-03-2019",
                          icon: IconService.zips,
                          isBilled: true,
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

class ContactCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String image;
  final String userName;
  final String number;
  final VoidCallback phoneCall;
  final VoidCallback messageWrite;

  const ContactCard({
    Key? key,
    this.onTap,
    required this.image,
    required this.userName,
    required this.number,
    required this.phoneCall,
    required this.messageWrite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 81),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(image),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        userName,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff1F2C37),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        number,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xff1F2C37),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff0369A1),
                        radius: 16,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: SvgPicture.asset(IconService.phone),
                          onPressed: phoneCall,
                        ),
                      ),
                      const SizedBox(width: 12),
                      CircleAvatar(
                        backgroundColor: const Color(0xff0369A1),
                        radius: 16,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: SvgPicture.asset(IconService.message),
                          onPressed: messageWrite,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 90),
              child: DividerWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class VehicleCard extends StatelessWidget {
  final bool isActive;
  final String carName;
  final String carImage;
  final String distance;
  final VoidCallback onTap;
  final String plate;

  const VehicleCard({
    Key? key,
    required this.isActive,
    required this.carName,
    required this.carImage,
    required this.distance,
    required this.onTap,
    required this.plate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: w - 40,
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
                    color: isActive
                        ? const Color(0xff00CF7F)
                        : const Color(0xffFF4D12),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text(
                    isActive ? "Available" : "Passive",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                carImage,
                fit: BoxFit.cover,
                width: w - 72,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      carName,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C2B34),
                      ),
                    ),
                    Text(
                      plate,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xff9CA4AB),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      IconService.gps,
                      width: 16,
                      height: 16,
                    ),
                    Text(
                      " > $distance",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff787878),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransectionAmountTile extends StatelessWidget {
  final bool isBilled;
  final String icon;
  final String title;
  final String date;
  final int amount;
  final Color amountColor;
  const TransectionAmountTile({
    super.key,
    this.isBilled = false,
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
    this.amountColor = const Color(0xff1C162E),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: isBilled ? const Color(0xffF2F2F2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xffF2F2F2)),
        /*
        boxShadow: !isBilled
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 0), // Shadow on all sides
                ),
              ]
            : [],
            */
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor:
                isBilled ? const Color(0xff1C162E) : const Color(0xff24CDD8),
            child: SvgPicture.asset(
              icon,
              width: 15,
              height: 15,
              color: Colors.white,
            ),
            /*
            child: Icon(
              icon,
              color: Colors.white,
            ),
            */
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C162E),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xffC6C4CA),
                  ),
                ),
              ],
            ),
          ),
          Text(
            /*
            amount > 0
                ? "+" + amount.toString() + "\$"
                : amount.toString() + "\$",
                */
            "+\$ $amount",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff1C162E),
              /*
              color: amount > 0
                  ? const Color(0xff1C162E)
                  : const Color(0xffFF3A79),
                  */
            ),
          ),
        ],
      ),
    );
  }
}

/* // VehicleCard
      Container(
                    width: w - 40,
                    //height: (w - 64) * 0.82,
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
                                color: const Color(0xff00CF7F),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: const Text(
                                "Available",
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
                            width: w - 72,
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
                            Row(
                              children: [
                                SvgPicture.asset(
                                  IconService.gps,
                                  width: 16,
                                  height: 16,
                                ),
                                const Text(
                                  " > 870 km",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff787878),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                
*/