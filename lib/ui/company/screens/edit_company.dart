import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/simple_text.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';
import 'package:finance/ui/auth/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditCompanyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Edit Company"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage("assets/images/logo_company.png"),
                  ),
                  Positioned(
                    right: 0, // Sağda küçük bir boşluk bırakabilirsiniz
                    bottom: 0, // Altta küçük bir boşluk bırakabilirsiniz
                    child: Container(
                      width: 32,
                      height: 32,
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: const Color(0xff4F3D56),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: SvgPicture.asset(
                        IconService.camera, // İkonunuzu burada belirtin
                        color: Colors.white,
                        width: 18, height: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 11),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SimpleText(title: "Company Name"),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    hintText: "Luxury Taxi GmbH",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 25),
                  const SimpleText(title: "Email"),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    hintText: "info@luxurytaxi.com",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 25),
                  const SimpleText(title: "Phone Number"),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    hintText: "+1 3712 3789",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 25),
                  const SimpleText(title: "Address"),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                    hintText:
                        "711 Leavenworth Apt. # 47 San Francisco, \nCA 94109",
                    controller: TextEditingController(),
                    maxLines: 5,
                  ),
                  const SizedBox(height: 16),
                  ButtonWidget(
                    text: "Save Change",
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
}

Widget profileInfoText(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Color(0xff1F2C37),
      ),
    ),
  );
}
