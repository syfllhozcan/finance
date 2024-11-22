import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:finance/shared_widget/custom_app_bar.dart';
import 'package:finance/ui/driver/widgets/scan_option_widget.dart';
import 'package:flutter/material.dart';

class ScanDriverDocumentPage extends StatefulWidget {
  @override
  _ScanDriverDocumentPageState createState() => _ScanDriverDocumentPageState();
}

class _ScanDriverDocumentPageState extends State<ScanDriverDocumentPage> {
  // int selectedIndex = 0; // Başlangıçta ilk buton seçili olacak
  Map<String, bool> selectedOptions = {
    "ID Card": true,
    "License": false,
    "Permit": false,
  };
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Scan Document"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1.5, // Yükseklik, genişliğin 1.5 katı
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Dıştaki resim, siyah opaklık efekti uygulanmış olarak
                  ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.63),
                        BlendMode.darken,
                      ),
                      child: Image.asset(
                        ImageService.rectangle,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // İç kısımdaki resim, opaklık olmadan
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Image.asset(
                      ImageService.tarama,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    bottom: 35,
                    child: Column(
                      children: [
                        Text(
                          "Scaning Lisance",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 6),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 24,
                    child: SizedBox(
                      width: w - 80,
                      child: LinearProgressIndicator(
                        minHeight: 5,
                        value: 0.4,
                        borderRadius: BorderRadius.circular(8),
                        backgroundColor: Colors.black,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xffEFBC48),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
// Alt taraftaki butonlar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
// ID Card
                ScanOptionWidget(
                  icon: IconService.combined_shape,
                  label: "ID Card",
                  color: const Color(0xff0369A1),
                  isSelected: selectedOptions["ID Card"]!,
                  onTap: () {
                    setState(() {
                      selectedOptions["ID Card"] = !selectedOptions["ID Card"]!;
                    });
                  },
                  /* // bu eski hali tek bir tane seçilme olanı
                  isSelected: selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  */
                ),
// License
                ScanOptionWidget(
                  icon: IconService.script,
                  label: "License",
                  color: const Color(0xff23D99D),
                  isSelected: selectedOptions["License"]!,
                  onTap: () {
                    setState(() {
                      selectedOptions["License"] = !selectedOptions["License"]!;
                    });
                  },
                ),
// Permit
                ScanOptionWidget(
                  icon: IconService.focus,
                  label: "Permit",
                  color: const Color(0xff99B3AD),
                  isSelected: selectedOptions["Permit"]!,
                  onTap: () {
                    setState(() {
                      selectedOptions["Permit"] = !selectedOptions["Permit"]!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////

/*
import 'package:finance/config/image/image/images.dart';
import 'package:flutter/material.dart';

class ScanDocumentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Scan Document",
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1.5, // Yükseklik, genişliğin 1.5 katı
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Dıştaki resim, siyah opaklık efekti uygulanmış olarak
                  ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7),
                        BlendMode.darken,
                      ),
                      child: Image.asset(
                        ImageService.rectangle,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // İç kısımdaki resim, opaklık olmadan
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Image.asset(
                      ImageService.tarama,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),
            // Alt taraftaki butonlar
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ScanOptionWidget(
                  icon: Icons.credit_card,
                  label: "ID Card",
                  color: Color(0xff0369A1),
                ),
                SizedBox(width: 24),
                ScanOptionWidget(
                  icon: Icons.badge,
                  label: "License",
                  color: Color(0xff23D99D),
                ),
                SizedBox(width: 24),
                ScanOptionWidget(
                  icon: Icons.perm_contact_calendar,
                  label: "Permit",
                  color: Color(0xff99B3AD),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ScanOptionWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const ScanOptionWidget({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    // Ekran genişliğini alıyoruz
    final double w = (MediaQuery.of(context).size.width - 88) / 3;

    return Container(
        width: w,
        height: w * 1.2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            const Positioned(
              top: 2,
              right: 2,
              child: Icon(
                Icons.check_circle,
                color: Color(0xff0369A1),
                size: 20,
              ),
            ),
            Align(
              alignment: Alignment
                  .center, // Burada Column'ı yatayda ve dikeyde ortaladık
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Bu satır aslında gereksiz ama yine de ekledik
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Icon(icon, color: Colors.white, size: 30),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
*/