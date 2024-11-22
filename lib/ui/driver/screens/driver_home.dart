import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_floating_action_button.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:finance/shared_widget/transaction_item_tile.dart';
import 'package:finance/ui/company/widgets/profile_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DriverHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileHeaderWidget(),
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(height: 24),

                      const Row(
                        children: [
// 1. kutu Income
                          TransactionItemCard(
                            boxColor: Color(0xff00CF7F),
                            icon: Icons.arrow_drop_up,
                            iconColor: Colors.white,
                            price: "\$6.564,34",
                            text: "Income",
                          ),
                          SizedBox(width: 16),
// 2. kutu Outcome

                          TransactionItemCard(
                            boxColor: Color(0xff1C162E),
                            icon: Icons.arrow_drop_down,
                            iconColor: Color(0xffFF3A79),
                            price: "\$4.764,35",
                            text: "Outcome",
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
// 3. büyük kutu
                      BigVehicleCard(
                        moreTab: () {
                          print("üç notkta tıklandı");
                        },
                        image: ImageService.car,
                        carName: 'Fortuner GR',
                        isActive: true,
                        logo: ImageService.logo_company,
                        companyName: 'Luxury Taxi GmbH',
                        tileTap: () {
                          print("alt tile");
                        },
                      ),

                      const SizedBox(height: 16),
                      const SimpleText(
                        title: "Transactions",
                        color: Color(0xff9CA4AB),
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 4),
                      ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          TransactionItemTile(
                            title: 'Repair Car',
                            subtitle: "Mall",
                            amount: '-\$20.00',
                            date: '10 Oct',
                            //color: const Color(0xffFF3A79),
                            //icon: Icons.arrow_drop_up,
                          ),
                          TransactionItemTile(
                            title: 'Taxi Services',
                            subtitle: "Transactions",
                            amount: '+\$13.00',
                            date: '13 Oct',
                            //color: const Color(0xff00CF7F),
                            //icon: Icons.arrow_drop_down,
                          ),
                          TransactionItemTile(
                            title: 'Washing Car',
                            subtitle: "Resto",
                            amount: '-\$40.00',
                            date: '17 Oct',
                            //color: const Color(0xffFF3A79),
                            //icon: Icons.arrow_drop_up,
                          ),
                          TransactionItemTile(
                            title: 'Taxi Services',
                            subtitle: "Transactions",
                            amount: '+\$13.00',
                            date: '13 Oct',
                            //color: const Color(0xff00CF7F),
                            //icon: Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class TransactionItemCard extends StatelessWidget {
  final String price;
  final String text;
  final Color boxColor;
  final IconData icon;
  final Color iconColor;
  const TransactionItemCard({
    required this.price,
    required this.text,
    required this.boxColor,
    required this.icon,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
      width: (w - 64) / 2,
      height: (w - 64) / 2 * 0.9,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xffE3E9ED)),
        /*
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
        */
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                icon,
                color: iconColor,
                size: 24,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11),
                child: Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C162E),
                  ),
                ),
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff1C162E),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BigVehicleCard extends StatelessWidget {
  final VoidCallback moreTab;
  final String image;
  final String carName;
  final bool isActive;
  final String logo;
  final String companyName;
  final VoidCallback tileTap;

  const BigVehicleCard({
    Key? key,
    required this.moreTab,
    required this.image,
    required this.carName,
    required this.isActive,
    required this.logo,
    required this.companyName,
    required this.tileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
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
              InkWell(
                onTap: moreTab,
                child: SvgPicture.asset(
                  IconService.more,
                  width: 24,
                  height: 24,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              image, //ImageService.car,
              fit: BoxFit.cover,
              width: w - 72,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                //"Fortuner GR",
                carName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2C2B34),
                ),
              ),
              Container(
                //height: 25,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                decoration: BoxDecoration(
                  color: isActive
                      ? const Color(0xff00CF7F)
                      : const Color(0xffFF4D12),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  isActive ? "Active" : "Passive",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: tileTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              decoration: BoxDecoration(
                color: const Color(0xff0369A1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(child: Image.asset(logo)),
                  const SizedBox(width: 20),
                  Text(
                    companyName, // "Luxury Taxi GmbH",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    IconService.right,
                    width: 14,
                    height: 14,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
