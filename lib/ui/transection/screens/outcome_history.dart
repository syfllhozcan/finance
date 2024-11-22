import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:finance/config/image/icon/icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class OutcomeHistoryPage extends StatelessWidget {
  const OutcomeHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(title: "Outcome History"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "€ 46,438.00",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xff1C162E),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Total Outcome",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffC6C4CA),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 36),
            Row(
              children: [
                const Text(
                  "Transactions",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C162E),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xffFF647C),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Text(
                    "New",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 10),
                children: const [
                  TransactionSlidableTile(
                    icon: Icons.build,
                    title: "Repair",
                    date: "06-03-2019",
                    amount: "+\$500",
                    amountColor: Colors.black,
                    isBilled: false,
                  ),
                  TransactionSlidableTile(
                    icon: Icons.card_giftcard_outlined,
                    title: "Gift",
                    date: "06-03-2019",
                    amount: "+\$500",
                    amountColor: Colors.black,
                    isBilled: false,
                  ),
                  TransactionSlidableTile(
                    icon: Icons.shopping_bag,
                    title: "Shop",
                    date: "10-03-2019",
                    amount: "+\$200",
                    amountColor: Colors.black,
                    isBilled: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Yesterday",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1C162E),
                    ),
                  ),
                  SizedBox(height: 10),
                  TransactionSlidableTile(
                    icon: Icons.local_gas_station,
                    title: "Fuel",
                    date: "01-03-2019",
                    amount: "+\$200",
                    amountColor: Colors.black,
                    isBilled: true,
                  ),
                  TransactionSlidableTile(
                    icon: Icons.local_car_wash,
                    title: "Wash",
                    date: "12-03-2019",
                    amount: "\$1400",
                    amountColor: Colors.black,
                    isBilled: true,
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

// kaydırma ile birlikte widget
class TransactionSlidableTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String date;
  final String amount;
  final Color amountColor;
  final bool isBilled;

  const TransactionSlidableTile({
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
    required this.amountColor,
    this.isBilled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Slidable(
        //key: ValueKey(title),
        endActionPane: ActionPane(
          motion: const BehindMotion(),
          children: [
            const SizedBox(width: 16),
            SlidableIconButton(
              icon: IconService.lock,
              boxcolor: const Color(0xff00C48C),
              onPressed: () {
                print("kilit");
              },
            ),
            const SizedBox(width: 16),
            SlidableIconButton(
              icon: IconService.pencel,
              boxcolor: const Color(0xff7A79F7),
              onPressed: () {
                print("edit");
              },
            ),
          ],
        ),
        child: TransectionAmountTile(
          isBilled: isBilled,
          icon: icon,
          title: title,
          date: date,
          amount: amount,
        ),
      ),
    );
  }
}

// Kaydrımada çıkan kutu widget
class SlidableIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final Color boxcolor;
  const SlidableIconButton({
    required this.onPressed,
    required this.icon,
    required this.boxcolor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: boxcolor, // const Color(0xff00C48C),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 44,
      width: 44,
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon, //IconService.lock,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}

// normal tile widgeti yani ilk görünen widget
class TransectionAmountTile extends StatelessWidget {
  const TransectionAmountTile({
    super.key,
    required this.isBilled,
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
  });

  final bool isBilled;
  final IconData icon;
  final String title;
  final String date;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: isBilled ? const Color(0xffF7F7F9) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: !isBilled
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                ),
              ]
            : [],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor:
                isBilled ? const Color(0xff1C162E) : const Color(0xff24CDD8),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C162E),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xffA2A0A8),
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff1C162E),
            ),
          ),
        ],
      ),
    );
  }
}


/////////////////////////////////////////////////

/*
class OutcomeHistoryPage extends StatelessWidget {
  const OutcomeHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Outcome History",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0, // AppBar gölgesini kaldırdık
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "€ 46,438.00",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xff1C162E),
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
*/