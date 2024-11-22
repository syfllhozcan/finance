import 'package:finance/ui/all_page.dart';
import 'package:finance/ui/auth/screens/create_new_password.dart';
import 'package:finance/ui/auth/screens/select_status.dart';
import 'package:finance/ui/auth/screens/forgot_password.dart';
import 'package:finance/ui/auth/screens/login_page.dart';
import 'package:finance/ui/auth/screens/otp_page.dart';
import 'package:finance/ui/auth/screens/privacy_policy.dart';
import 'package:finance/ui/auth/screens/signup_page.dart';
import 'package:finance/ui/company/screens/company_detail.dart';
import 'package:finance/ui/company/screens/company_home.dart';
import 'package:finance/ui/company/screens/edit_company.dart';
import 'package:finance/ui/driver/screens/driver_detail.dart';
import 'package:finance/ui/driver/screens/driver_home.dart';
import 'package:finance/ui/driver/screens/driver_my_card.dart';
import 'package:finance/ui/driver/screens/driver_profile.dart';
import 'package:finance/ui/driver/screens/drivers.dart';
import 'package:finance/ui/invoices/screens/add_invoices.dart';
import 'package:finance/ui/invoices/screens/invoices.dart';
import 'package:finance/ui/notifications/screens/notifications_setting.dart';
import 'package:finance/ui/profile/screens/edit_profile.dart';
import 'package:finance/ui/profile/screens/my_profile.dart';
import 'package:finance/ui/driver/screens/scan_driver.dart';
import 'package:finance/ui/transection/screens/new_transection.dart';
import 'package:finance/ui/transection/screens/outcome_history.dart';
import 'package:finance/ui/vehicles/screens/select_vehicles.dart';
import 'package:finance/ui/vehicles/screens/vehicles.dart';
import 'package:finance/ui/vehicles/screens/vehicles_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: LoginPage(),
      //home: SignUpPage(),
      //home: OTPScreen(),
      //home: SelectStatusPage(),
      //home: MyProfilePage(),
      //home: DriverProfilePage(),
      //home: EditProfilePage(),
      //home: ScanDriverDocumentPage(),
      //home: EditCompanyPage(),
      //home: CompanyDetailPage(),
      //home: CompanyHomePage(),
      //home: Drivers(),
      //home: DriverHomePage(),
      //home: SelectVehiclesPage(),
      //home: VehiclesPage(),
      //home: NewTransection(),
      //***********************/
      //home: OutcomeHistoryPage(),
      //home: VehiclesDetailPage(),
      //home: DriverDetailPage(),
      //home: DriverMyCardPage(),
      //home: InvoicesPage(),
      //home: AddInvoicesPage(),
      //home: PrivacyPolicyPage(),
      //home: NotificationsSettingPaga(),
      //home: ForgotPasswordPage(),
      //home: CreateNewPasswordPage(),
      home: AllPage(), // şimdilik var sonra sil
      routes: {
        '/select_status': (context) => SelectStatusPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/otp': (context) => OTPScreen(),
        '/profile': (context) => MyProfilePage(),
        '/driver_profile': (context) => DriverProfilePage(),
        '/edit_profile': (context) => EditProfilePage(),
        '/scan_driver': (context) => ScanDriverDocumentPage(),
        '/edit_company': (context) => EditCompanyPage(),
        '/company_home': (context) => CompanyHomePage(),
        '/company_detail': (context) => CompanyDetailPage(),
        '/driver_home': (context) => DriverHomePage(),
        '/drivers': (context) => Drivers(),
        '/select_vehicles': (context) => SelectVehiclesPage(),
        '/vehicles_detail': (context) => VehiclesDetailPage(),
        '/vehicles': (context) => VehiclesPage(),
        '/new_transection': (context) => NewTransection(),
        '/outcome_history': (context) => OutcomeHistoryPage(),
        '/driver_my_card': (context) => DriverMyCardPage(),
        '/driver_detail': (context) => DriverDetailPage(),
        '/invoices': (context) => InvoicesPage(),
        '/add_invoices': (context) => AddInvoicesPage(),
        '/privacy_policy': (context) => PrivacyPolicyPage(),
        '/notifications': (context) => NotificationsSettingPaga(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/create_new_password': (context) => CreateNewPasswordPage(),
        '/all': (context) => AllPage(), // şimdilik var sonra sil
      },
    );
  }
}
