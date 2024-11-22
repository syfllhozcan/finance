import 'dart:ui';

import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/shared_widget/divider_widget.dart';
import 'package:finance/ui/auth/screens/otp_page.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "All Pages"),
      body: ListView(
        children: [
          SinglePage(
              text: "AddInvoicesPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/add_invoices');
              }),
          SinglePage(
              text: "CompanyDetailPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/company_detail');
              }),
          SinglePage(
              text: "CompanyHomePage",
              callbackAction: () {
                Navigator.pushNamed(context, '/company_home');
              }),
          SinglePage(
              text: "CreateNewPasswordPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/create_new_password');
              }),
          SinglePage(
              text: "DriverDetailPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/driver_detail');
              }),
          SinglePage(
              text: "DriverHomePage",
              callbackAction: () {
                Navigator.pushNamed(context, '/driver_home');
              }),
          SinglePage(
              text: "DriverMyCardPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/driver_my_card');
              }),
          SinglePage(
              text: "DriverProfilePage",
              callbackAction: () {
                Navigator.pushNamed(context, '/driver_profile');
              }),
          SinglePage(
              text: "Drivers",
              callbackAction: () {
                Navigator.pushNamed(context, '/drivers');
              }),
          SinglePage(
              text: "EditCompanyPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/edit_company');
              }),
          SinglePage(
              text: "EditProfilePage",
              callbackAction: () {
                Navigator.pushNamed(context, '/edit_profile');
              }),
          SinglePage(
              text: "ForgotPasswordPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/forgot_password');
              }),
          SinglePage(
              text: "InvoicesPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/invoices');
              }),
          SinglePage(
              text: "LoginPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/login');
              }),
          SinglePage(
              text: "NewTransection",
              callbackAction: () {
                Navigator.pushNamed(context, '/new_transection');
              }),
          SinglePage(
              text: "NotificationsSettingPaga",
              callbackAction: () {
                Navigator.pushNamed(context, '/notifications');
              }),
          SinglePage(
              text: "OTPScreen",
              callbackAction: () {
                Navigator.pushNamed(context, '/otp');
              }),
          SinglePage(
              text: "OutcomeHistoryPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/outcome_history');
              }),
          SinglePage(
              text: "PrivacyPolicyPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/privacy_policy');
              }),
          SinglePage(
              text: "ProfilePage",
              callbackAction: () {
                Navigator.pushNamed(context, '/profile');
              }),
          SinglePage(
              text: "ScanDriverDocumentPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/scan_driver');
              }),
          SinglePage(
              text: "SelectStatusPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/select_status');
              }),
          SinglePage(
              text: "SelectVehiclesPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/select_vehicles');
              }),
          SinglePage(
              text: "SignUpPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/signup');
              }),
          SinglePage(
              text: "VehiclesPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/vehicles');
              }),
          SinglePage(
              text: "VehiclesDetailPage",
              callbackAction: () {
                Navigator.pushNamed(context, '/vehicles_detail');
              }),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Show Dialogs"),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ShowDialogs(
                    callbackAction: () {
                      showDialog1(context);
                    },
                    text: "1"),
                ShowDialogs(
                    callbackAction: () {
                      showDialog2(context);
                    },
                    text: "2"),
                ShowDialogs(
                    callbackAction: () {
                      showDialog3(context);
                    },
                    text: "3"),
                ShowDialogs(
                    callbackAction: () {
                      showDialog4(context);
                    },
                    text: "4"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Show Dialogs Bottom Sheet"),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ShowDialogs(
                    callbackAction: () {
                      showDialogBottom1(context, w);
                    },
                    text: "1"),
                ShowDialogs(
                    callbackAction: () {
                      showDialogBottom2(context, w);
                    },
                    text: "2"),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Future<Object?> showDialog1(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, anim1, anim2) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  color: const Color(0xff4F3D56).withOpacity(0.63),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 48,
                  height: 324,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: "I agree to the "),
                              TextSpan(
                                  text: "Terms of Service",
                                  style: TextStyle(color: Color(0xff1F2C37))),
                              TextSpan(text: " and "),
                              TextSpan(
                                  text: "Conditions of Use ",
                                  style: TextStyle(color: Color(0xff1F2C37))),
                              TextSpan(
                                  text:
                                      "including consent to electronic communications and I affirm that the information provided is my own."),
                            ],
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff78828A),
                              fontWeight: FontWeight.w300,
                              height:
                                  1.5, // Satır yüksekliğini buradan artırabilirsiniz
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 32),
                      ButtonWidget(
                        text: "Agree and continue",
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const SizedBox(height: 16),
                      ButtonWidget(
                        text: "Disgree",
                        color: Colors.white,
                        textColor: const Color(0xFF1E5AA7),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<Object?> showDialog2(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, anim1, anim2) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  color: const Color(0xff4F3D56).withOpacity(0.63),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 48,
                  height: 570,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 6),
                      const Text(
                        "Taxi Services",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff66707A),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 36,
                            backgroundColor: const Color(0xffF6F6F6),
                            child: SvgPicture.asset(
                              IconService.shopping,
                              color: Colors.black,
                              height: 24,
                              width: 24,
                            ),
                          ),
                          const SizedBox(width: 24),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Amount",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none,
                                  color: Color(0xff1F2C37),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "€ 154,",
                                    ),
                                    TextSpan(
                                      text: "42",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: Color(0xff1F2C37),
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "Services detail",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1F2C37),
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(height: 16),
                      StiringFormRow(title: "From", text: "Terminal 1"),
                      StiringFormRow(title: "to", text: "Hilton Hotel"),
                      StiringFormRow(title: "Distance", text: "12 km"),
                      StiringFormRow(title: "Vehicle", text: "Mercedes"),
                      StiringFormRow(title: "Plate", text: "23 AK 47"),
                      StiringFormRow(title: "Transfer", text: "€ 154,42"),
                      StiringFormRow(title: "Tax", text: "%7"),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        child: DividerWidget(),
                      ),
                      StiringFormRow(title: "Total Amount", text: "€ 154,42"),
                      const SizedBox(height: 26),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 32),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff1F2C37),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 32),
                            decoration: BoxDecoration(
                              color: const Color(0xff0369A1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<Object?> showDialog3(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, anim1, anim2) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  color: const Color(0xff4F3D56).withOpacity(0.63),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 64,
                  height: 266,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          IconService.x,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 48, vertical: 0),
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            const Text(
                              "Are you sure want to Log Out?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1F2C37),
                                  decoration: TextDecoration.none),
                            ),
                            const SizedBox(height: 32),
                            ButtonWidget(
                              text: "Cancel",
                              onPressed: () {},
                            ),
                            const SizedBox(height: 10),
                            ButtonWidget(
                              text: "Log Out",
                              color: Colors.white,
                              textColor: const Color(0xFFEB5757),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<Object?> showDialog4(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, anim1, anim2) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  color: const Color(0xff4F3D56).withOpacity(0.63),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 48,
                  height: 324,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          IconService.like,
                          height: 136,
                          width: 136,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "Success",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1F2C37),
                            decoration: TextDecoration.none),
                      ),
                      const Text(
                        "Your password is succesfully created",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: Color(0xff9CA4AB),
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 84),
                        child: ButtonWidget(
                          text: "Cancel",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> showDialogBottom1(BuildContext context, double w) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  color: const Color(0xff4F3D56).withOpacity(0.63),
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  heightFactor: 0.55,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 48,
                                width: 48,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xffE3E9ED),
                                    width: 1,
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  IconService.x,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                            const Text(
                              'Add Driver',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f2c37),
                              ),
                            ),
                            const SizedBox(width: 48)
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Container(
                              height: 140,
                              width: (w - 64) / 2,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffE3E9ED), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE2E0E4),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xffE3E9ED),
                                          width: 1),
                                    ),
                                    child: SvgPicture.asset(
                                      IconService.qr,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const Text(
                                    "Scan Qr",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color(0xff1f2c37),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              height: 140,
                              width: (w - 64) / 2,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffE3E9ED), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE2E0E4),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xffE3E9ED),
                                          width: 1),
                                    ),
                                    child: SvgPicture.asset(
                                      IconService.profile_bold,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const Text(
                                    "With User Id",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color(0xff1f2c37),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Container(
                              height: 140,
                              width: (w - 64) / 2,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffE3E9ED), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE2E0E4),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xffE3E9ED),
                                          width: 1),
                                    ),
                                    child: SvgPicture.asset(
                                      IconService.phone_bold,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const Text(
                                    "With Phone",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color(0xff1f2c37),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              height: 140,
                              width: (w - 64) / 2,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffE3E9ED), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE2E0E4),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xffE3E9ED),
                                          width: 1),
                                    ),
                                    child: SvgPicture.asset(
                                      IconService.send,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const Text(
                                    "Send Invite",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color(0xff1f2c37),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> showDialogBottom2(BuildContext context, double w) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  color: const Color(0xff4F3D56).withOpacity(0.63),
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  heightFactor: 0.55,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 48,
                                width: 48,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xffE3E9ED),
                                    width: 1,
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  IconService.x,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                            const Text(
                              'Invoice Options',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f2c37),
                              ),
                            ),
                            const SizedBox(width: 48)
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Container(
                              height: 140,
                              width: (w - 64) / 2,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffE3E9ED), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE2E0E4),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xffE3E9ED),
                                          width: 1),
                                    ),
                                    child: SvgPicture.asset(
                                      IconService.customers,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const Text(
                                    "Customers",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color(0xff1f2c37),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              height: 140,
                              width: (w - 64) / 2,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffE3E9ED), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE2E0E4),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xffE3E9ED),
                                          width: 1),
                                    ),
                                    child: SvgPicture.asset(
                                      IconService.products,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const Text(
                                    "Products",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color(0xff1f2c37),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Container(
                              height: 140,
                              width: (w - 64) / 2,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffE3E9ED), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE2E0E4),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xffE3E9ED),
                                          width: 1),
                                    ),
                                    child: SvgPicture.asset(
                                      IconService.taxes,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const Text(
                                    "Taxes",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color(0xff1f2c37),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              height: 140,
                              width: (w - 64) / 2,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffE3E9ED), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE2E0E4),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xffE3E9ED),
                                          width: 1),
                                    ),
                                    child: SvgPicture.asset(
                                      IconService.types,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const Text(
                                    "Types",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color(0xff1f2c37),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class SinglePage extends StatelessWidget {
  VoidCallback callbackAction;
  String text;
  SinglePage({
    required this.callbackAction,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callbackAction,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
        child: Card(
          color: const Color(0xff1C162E),
          child: ListTile(
            title: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ShowDialogs extends StatelessWidget {
  VoidCallback callbackAction;
  String text;
  ShowDialogs({
    required this.callbackAction,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callbackAction,
      child: CircleAvatar(
        backgroundColor: const Color(0xff1C162E),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
