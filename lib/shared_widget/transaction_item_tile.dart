import 'package:flutter/material.dart';

class TransactionItemTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final String date;
  //final Color color;
  //final IconData icon;

  TransactionItemTile({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.date,
    //required this.color,
    //required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: amount.contains('-')
                  ? const Color(0xff1C162E)
                  : const Color(0xff00CF7F),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                amount.contains('-')
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
                //icon,
                color: amount.contains('-')
                    ? const Color(0xffFF3A79)
                    : Colors.white,
                size: 24,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xffC6C4CA), //tileSubtitleColor
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  amount,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: amount.contains('-')
                        ? const Color(0xffFF3A79)
                        : const Color(0xff1C162E), //dashboardCardColor
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style:
                      const TextStyle(fontSize: 12, color: Color(0xffC6C4CA)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
