import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/color_box_space_widget.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';
import 'package:finance/ui/auth/widgets/text_field_widget.dart';
import 'package:finance/ui/transection/widgets/TextFieldIconWidget.dart';
import 'package:flutter/material.dart';

class NewTransection extends StatefulWidget {
  const NewTransection({super.key});

  @override
  State<NewTransection> createState() => _NewTransectionState();
}

class _NewTransectionState extends State<NewTransection> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: const CustomAppBar(title: "New Transection"),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Income Butonu
                    ColorBoxSpaceWidget(
                      isSelected: selectedOption == 0,
                      selectedColor: const Color(0xff0369A1),
                      unselectedColor: Colors.white,
                      text: 'Income',
                      onTap: () {
                        setState(() {
                          selectedOption = 0;
                        });
                      },
                    ),
                    // Outcome Butonu
                    ColorBoxSpaceWidget(
                      isSelected: selectedOption == 1,
                      selectedColor: const Color(0xff0369A1),
                      unselectedColor: Colors.white,
                      text: 'Outcome',
                      onTap: () {
                        setState(() {
                          selectedOption = 1;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
          // Seçilen butona göre değişen içerik
          selectedOption == 0
              ? const IncomePlaceWidget()
              : const OutcomePlaceWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: ButtonWidget(
              text: "Save Transection",
              onPressed: () {
                if (selectedOption == 0) {
                  // Income kaydını yap
                  print("Saving Income Transection...");
                } else if (selectedOption == 1) {
                  // Outcome kaydını yap
                  print("Saving Outcome Transection...");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Income alanı
class IncomePlaceWidget extends StatelessWidget {
  const IncomePlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            AmountTileCard(),
            const SizedBox(height: 16),
            const Text(
              "Detail",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hintText: "Title",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 12),
            TextFieldWidget(
              hintText: "Enter Amount",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 12),

            //const Spacer(),
            /*
            const SizedBox(height: 12),
            ButtonWidget(
              text: "Save Transection",
              onPressed: () {},
            ),
            const SizedBox(height: 12),
            */
          ],
        ),
      ),
    );
  }
}

//Iutcome alanı
class OutcomePlaceWidget extends StatefulWidget {
  const OutcomePlaceWidget({
    super.key,
  });

  @override
  State<OutcomePlaceWidget> createState() => _OutcomePlaceWidgetState();
}

class _OutcomePlaceWidgetState extends State<OutcomePlaceWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AmountTileCard(),
                SizedBox(height: 20),
                Text(
                  "Type",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 6),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: 5, // 5 adet kutu
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: TransectionBox(
                      selectedIndex: selectedIndex, index: index),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Detail",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                TextFieldIconWidget(
                  hintText: "2022-04-12",
                  controller: TextEditingController(),
                  icon: IconService.calendar,
                ),
                const SizedBox(height: 12),
                TextFieldWidget(
                  hintText: "Enter Amount",
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 12),
                TextFieldWidget(
                  hintText: "Detail Content",
                  maxLines: 4,
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 12),
                //const Spacer(),
                /*
                const SizedBox(height: 12),
          
                ButtonWidget(
                  text: "Save Transection",
                  onPressed: () {},
                ),
          */
                //Container(height: 400, color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Enter Amount card
class AmountTileCard extends StatelessWidget {
  const AmountTileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff1C162E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                "Enter Amount",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                "EUR",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_drop_down,
                color: Color(0xffFF3A79),
                size: 24,
              ),
            ],
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: "€ 3.500",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: ".00",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.4),
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

// 5 tane kutu
class TransectionBox extends StatelessWidget {
  final int index;
  final int selectedIndex;
  //final String? text;
  //final String? icon;
  const TransectionBox({
    required this.index,
    required this.selectedIndex,
    //this.text,
    //this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: selectedIndex == index ? const Color(0xff1C162E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            //color: const Color(0xff414141).withOpacity(0.5),
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            index == 0
                ? ImageService.shop
                : index == 1
                    ? ImageService.repair
                    : index == 2
                        ? ImageService.wash
                        : index == 3
                            ? ImageService.fuel
                            : ImageService.internet,
            width: 32,
            height: 32,
          ),
          Text(
            index == 0
                ? "Shop"
                : index == 1
                    ? "Repair"
                    : index == 2
                        ? "Wash"
                        : index == 3
                            ? "Fuel"
                            : "Internet",
            style: TextStyle(
              color: selectedIndex != index
                  ? const Color(0xff1C162E)
                  : Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
