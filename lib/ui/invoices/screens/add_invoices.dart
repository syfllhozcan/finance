import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/add_item_widget.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/custom_dropdown_widget.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';
import 'package:finance/ui/auth/widgets/text_field_widget.dart';
import 'package:finance/ui/transection/widgets/TextFieldIconWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddInvoicesPage extends StatefulWidget {
  const AddInvoicesPage({super.key});

  @override
  State<AddInvoicesPage> createState() => _AddInvoicesPageState();
}

class _AddInvoicesPageState extends State<AddInvoicesPage> {
  TextEditingController controller = TextEditingController();
  String selectedTextInvoice = "Teste inc.";
  String selectedTextTax = "%7";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Add Invoices"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  const SimpleText(title: "Company"),
                  const SizedBox(height: 8),
                  // en üstteki kart
                  SelectableItem(
                    image: ImageService.logo_company,
                    text: "Luxury Taxi GmbH",
                    onTap: () {
                      print("İşlem yap");
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const SimpleText(title: "Invoice To"),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "+ Add New",
                          style: TextStyle(
                            color: Color(0xff9CA4AB),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  /*
                  TextFieldIconWidget(
                    hintText: "Tesla inc.",
                    controller: TextEditingController(),
                    icon: IconService.down1,
                  ),
                  */
                  CustomDropdownWidget(
                    text: selectedTextInvoice,
                    icon: IconService.down1,
                    onChanged: (selectedOption) {
                      setState(() {
                        selectedTextInvoice = selectedOption;
                      });
                      print("Selected Option: $selectedOption");
                    },
                    onTap: () {
                      _showCustomDialogInvoice(context);
                    },
                  ),
                  const SizedBox(height: 12),
                  const SimpleText(title: "Tex No"),
                  const SizedBox(height: 8),
                  TextFieldWidget(
                    hintText: "Tex No",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 12),
                  const SimpleText(title: "Invoice Date"),
                  const SizedBox(height: 8),
// tarih seçimi yapılacak
                  TextFieldIconWidget(
                    hintText: "Select the date",
                    controller: TextEditingController(),
                    icon: IconService.calendar,
                  ),
                  const SizedBox(height: 12),
                  const SimpleText(title: "Select Tax"),
                  const SizedBox(height: 8),
                  /*               
                  TextFieldIconWidget(
                    hintText: "%7",
                    controller: TextEditingController(),
                    icon: IconService.down1,
                  ),
                  */
                  CustomDropdownWidget(
                    //options: const ["%7", "%8", "%9", "%10"],
                    text: selectedTextTax,
                    icon: IconService.down1,
                    onChanged: (selectedOption) {
                      setState(() {
                        selectedTextTax = selectedOption;
                      });
                      print("Selected Option: $selectedOption");
                    },
                    onTap: () {
                      _showCustomDialogTax(context);
                    },
                  ),
                  AddItemWidget(
                    label: "Add Product",
                    verticalMargin: 16,
                    onTap: () {},
                  ),
                  AddInvoicesForm(),
                  const SizedBox(height: 36),
                  ButtonWidget(
                    text: "Create Invoice",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showCustomDialogInvoice(BuildContext context) async {
    final selected = await showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select an option",
                  style: TextStyle(
                    color: Color(0xff1F2C37),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ...["Teste inc.", "Option 1", "Option 2", "Option 3"]
                    .map((option) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(option);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        option,
                        style: const TextStyle(
                          color: Color(0xff1F2C37),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        );
      },
    );

    if (selected != null && selected.isNotEmpty) {
      setState(() {
        selectedTextInvoice = selected;
      });
    }
  }

  Future<void> _showCustomDialogTax(BuildContext context) async {
    final selected = await showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select an option",
                  style: TextStyle(
                    color: Color(0xff1F2C37),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ...["%7", "%8", "%9", "%10"].map((option) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(option);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        option,
                        style: const TextStyle(
                          color: Color(0xff1F2C37),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        );
      },
    );

    if (selected != null && selected.isNotEmpty) {
      setState(() {
        selectedTextTax = selected;
      });
    }
  }
}

class SelectableItem extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;

  const SelectableItem({
    Key? key,
    required this.image,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xffECF1F6),
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset(image),
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                color: Color(0xff1f2c37),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              IconService.right,
              width: 18,
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class AddInvoicesForm extends StatelessWidget {
  const AddInvoicesForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffF3F3F3), //cardBackgroundColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SimpleText(title: "Title"),
          const SizedBox(height: 8),
          TextFieldWidget(
            hintText: "Title",
            controller: TextEditingController(),
          ),
          const SizedBox(height: 12),
          const SimpleText(title: "Amount"),
          const SizedBox(height: 8),
          TextFieldWidget(
            hintText: "Amount",
            controller: TextEditingController(),
          ),
          const SizedBox(height: 12),
          const SimpleText(title: "Type"),
          const SizedBox(height: 8),
          // CustomDropdownWidget kullan
          TextFieldIconWidget(
            hintText: "km",
            controller: TextEditingController(),
            icon: IconService.down1,
          ),
          const SizedBox(height: 12),
          const SimpleText(title: "Price"),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Prefix Icon kısmı
                Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color(0xffE2E0E4),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xff4F3D56),
                          radius: 12,
                          child: Icon(
                            Icons.attach_money,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Text(
                            "USD",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff1f2c37),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          IconService.down,
                          colorFilter: const ColorFilter.mode(
                            Color(0xff1f2c37),
                            BlendMode.srcIn,
                          ),
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                // Suffix Icon kısmı
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$154,42',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff1f2c37),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
