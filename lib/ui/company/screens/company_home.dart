import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_floating_action_button.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:finance/shared_widget/transaction_item_tile.dart';
import 'package:finance/ui/company/widgets/dashboard_card.dart';
import 'package:finance/ui/company/widgets/info_company_drivers_card.dart';
import 'package:finance/ui/company/widgets/info_company_invoices_dard.dart';
import 'package:finance/ui/company/widgets/info_company_vehicles_card.dart';
import 'package:finance/ui/company/widgets/profile_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:finance/shared_widget/info_card.dart';

class CompanyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final w = MediaQuery.of(context).size.width;
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
                      InfoCard(
                        companyName: "Luxury Taxi GmbH",
                        status: "Active",
                        authority: "Driver",
                        icon: IconService.down,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
// 1. kutu Dashboard
                          DashboardCard(
                            title: 'Dashboard',
                            icon: Icons.bar_chart,
                            data: 'Chart Data',
                            color: const Color(0xff1C162E),
                          ),
                          const SizedBox(width: 16),
// 2. kutu invoices
                          const InfoCompanyInvoicesCard(),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
// 3. kutu drivers
                          InfoCompanyDriversCard(
                            title: 'Drivers',
                            count: '60',
                            images: [
                              ImageService.profile_girl,
                              ImageService.profile,
                              ImageService.profile_girl,
                              ImageService.profile,
                            ],
                          ),
                          const SizedBox(width: 16),
// 4. kutu vehicles
                          const InfoCompanyVehiclesCard(),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const SimpleText(
                        title: "Transactions",
                        color: Color(0xff9CA4AB),
                        fontWeight: FontWeight.w400,
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
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}



///////////////////////////////////////////////////////
/*
import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/grey_title.dart';
import 'package:finance/shared_widget/transaction_item_tile.dart';
import 'package:finance/ui/company/widgets/dashboard_card.dart';
import 'package:finance/ui/company/widgets/info_company_drivers_card.dart';
import 'package:finance/ui/company/widgets/profile_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:finance/shared_widget/info_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompanyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // ProfileHeaderWidget kısmı sabit kalacak
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const ProfileHeaderWidget(),
            ),
            // Kaydırılabilir içerikler
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                children: [
                  const SizedBox(height: 24),
                  InfoCard(
                    companyName: "Luxury Taxi GmbH",
                    status: "Active",
                    authority: "Driver",
                    icon: IconService.down,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      // Dashboard kutusu
                      DashboardCard(
                        title: 'Dashboard',
                        icon: Icons.bar_chart,
                        data: 'Chart Data',
                        color: const Color(0xff1C162E),
                      ),
                      const SizedBox(width: 16),
                      InfoCompanyInvoicesCard(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      // Drivers kutusu
                      InfoCompanyDriversCard(
                        title: 'Drivers',
                        count: '60',
                        images: [
                          ImageService.profile_girl,
                          ImageService.profile,
                          ImageService.profile_girl,
                          ImageService.profile,
                        ],
                      ),
                      const SizedBox(width: 16),
                      const InfoCompanyVehiclesCard(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const GreyTitle(title: "Transactions"),
                  const SizedBox(height: 4),
                  // Transactions listesi ListView.builder ile oluşturuldu
                  /*
                 ListView.builder(
                    shrinkWrap: true,
                    physics:
                        NeverScrollableScrollPhysics(), // İçeride kaydırma olmaması için
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = transactions[index];
                      return TransactionItemTile(
                        title: transaction['title'],
                        subtitle: transaction['subtitle'],
                        amount: transaction['amount'],
                        date: transaction['date'],
                        color: transaction['color'],
                        icon: transaction['icon'],
                      );
                    },
                  ),
                */
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        TransactionItemTile(
                          title: 'Repair Car',
                          subtitle: "Mall",
                          amount: '-\$20.00',
                          date: '10 Oct',
                          color: const Color(0xffFF3A79),
                          icon: Icons.arrow_drop_up,
                        ),
                        TransactionItemTile(
                          title: 'Taxi Services',
                          subtitle: "Transactions",
                          amount: '+\$13.00',
                          date: '13 Oct',
                          color: const Color(0xff00CF7F),
                          icon: Icons.arrow_drop_down,
                        ),
                        TransactionItemTile(
                          title: 'Washing Car',
                          subtitle: "Resto",
                          amount: '-\$40.00',
                          date: '17 Oct',
                          color: const Color(0xffFF3A79),
                          icon: Icons.arrow_drop_up,
                        ),
                        TransactionItemTile(
                          title: 'Taxi Services',
                          subtitle: "Transactions",
                          amount: '+\$13.00',
                          date: '13 Oct',
                          color: const Color(0xff00CF7F),
                          icon: Icons.arrow_drop_down,
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
      floatingActionButton: SizedBox(
        width: 63,
        height: 63,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff0369A1),
          shape: const CircleBorder(),
          onPressed: () {},
          child: const Icon(
            Icons.add_box_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class InfoCompanyInvoicesCard extends StatelessWidget {
  const InfoCompanyInvoicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
      width: (w - 64) / 2,
      height: (w - 64) / 2,
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
                "Invoices",
                style: TextStyle(
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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 11),
                child: Text(
                  "16",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C162E),
                  ),
                ),
              ),
              Text(
                "Project and invoice",
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xffC1C162E),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InfoCompanyVehiclesCard extends StatelessWidget {
  const InfoCompanyVehiclesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
      width: (w - 64) / 2,
      height: (w - 64) / 2,
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
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C162E),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                "Vehicles",
                style: const TextStyle(
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
*/
