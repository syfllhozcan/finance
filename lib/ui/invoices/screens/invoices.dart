import 'package:finance/shared_widget/color_box_space_widget.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class InvoicesPage extends StatefulWidget {
  const InvoicesPage({super.key});

  @override
  State<InvoicesPage> createState() => _InvoicesPageState();
}

class _InvoicesPageState extends State<InvoicesPage> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Invoices"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffECF1F6), //iconBoxColor
                    radius: 24,
                    child: Icon(
                      Icons.add_rounded,
                      size: 24,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text("Add Driver",
                      style: TextStyle(
                          color: Color(0xff1F2C37),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // All Butonu
                    ColorBoxSpaceWidget(
                      isSelected: selectedOption == 0,
                      selectedColor: const Color(0xff0369A1),
                      unselectedColor: Colors.white,
                      text: 'All',
                      onTap: () {
                        setState(() {
                          selectedOption = 0;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    // Paid Butonu
                    ColorBoxSpaceWidget(
                      isSelected: selectedOption == 1,
                      selectedColor: const Color(0xff0369A1),
                      unselectedColor: Colors.white,
                      text: 'Paid',
                      onTap: () {
                        setState(() {
                          selectedOption = 1;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    // Send Butonu
                    ColorBoxSpaceWidget(
                      isSelected: selectedOption == 2,
                      selectedColor: const Color(0xff0369A1),
                      unselectedColor: Colors.white,
                      text: 'Send',
                      onTap: () {
                        setState(() {
                          selectedOption = 2;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    // Overdue Butonu
                    ColorBoxSpaceWidget(
                      isSelected: selectedOption == 3,
                      selectedColor: const Color(0xff0369A1),
                      unselectedColor: Colors.white,
                      text: 'Overdue',
                      onTap: () {
                        setState(() {
                          selectedOption = 3;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Alt kısımda seçili butona göre değişen içerik
              ],
            ),
            // Gösterilecek olan widget
            if (selectedOption == 0) const AllPlaceWidget(),
            if (selectedOption == 1) const PaidPlaceWidget(),
            if (selectedOption == 2) const SendPlaceWidget(),
            if (selectedOption == 3) const OverduePlaceWidget(),
          ],
        ),
      ),
    );
  }
}

// All alanı
class AllPlaceWidget extends StatelessWidget {
  const AllPlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          InvoiceItemWidget(
            companyName: 'Tesla inc.',
            invoiceNumber: '#INC98443',
            isPaid: false,
            amount: 400,
            date: '05-03-2019',
          ),
          InvoiceItemWidget(
            companyName: 'Tesla inc.',
            invoiceNumber: '#INC98443',
            isPaid: true,
            amount: 500,
            date: '06-03-2019',
          ),
          InvoiceItemWidget(
            companyName: 'Tesla inc.',
            invoiceNumber: '#INC98443',
            isPaid: true,
            amount: 500,
            date: '06-03-2019',
          ),
          InvoiceItemWidget(
            companyName: 'Tesla inc.',
            invoiceNumber: '#INC98443',
            isPaid: true,
            amount: 500,
            date: '06-03-2019',
          ),
        ],
      ),
    );
  }
}

class InvoiceItemWidget extends StatelessWidget {
  final String companyName;
  final String invoiceNumber;
  final bool isPaid;
//final String paymentStatus;
  final double amount;
  final String date;

  const InvoiceItemWidget({
    Key? key,
    required this.companyName,
    required this.invoiceNumber,
    required this.isPaid,
    required this.amount,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      margin: const EdgeInsets.symmetric(vertical: 9),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffECF1F6),
        ),
        /*
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
        */
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                companyName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1F2C37),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                invoiceNumber,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xffC6C4CA),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: isPaid
                      ? const Color(0xff00CF7F)
                      : const Color(0xffFF4D12),
                  borderRadius: BorderRadius.circular(24),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                child: Text(
                  isPaid ? "Paid" : "Unpaid",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+\$${amount.toString()}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1F2C37),
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xffC6C4CA),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Paid alanı
class PaidPlaceWidget extends StatelessWidget {
  const PaidPlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Paid",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

// Send alanı
class SendPlaceWidget extends StatelessWidget {
  const SendPlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            "Send",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

// Overdue alanı
class OverduePlaceWidget extends StatelessWidget {
  const OverduePlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            "Overdue",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
