import 'package:finance/config/image/icon/icons.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String data;
  final Color color;
  final Color textColor;

  DashboardCard({
    required this.title,
    required this.icon,
    required this.data,
    required this.color,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
      width: (w - 60) / 2,
      height: (w - 60) / 2,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SvgPicture.asset(
                IconService.down, // Mevcut simgeyi koruyoruz
                width: 18,
                height: 18,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 10,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        const style = TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        );
                        switch (value.toInt()) {
                          case 0:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('Mar', style: style),
                            );
                          case 1:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('Apr', style: style),
                            );
                          case 2:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('May', style: style),
                            );
                          case 3:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('Jun', style: style),
                            );
                          case 4:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('Jul', style: style),
                            );
                          default:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('', style: style),
                            );
                        }
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: _buildBarChartData(),
                gridData: const FlGridData(show: false),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _buildBarChartData() {
    return [
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
            toY: 6,
            color: const Color(0xffFFD035),
            width: 5,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            toY: 8,
            color: const Color(0xffFFD035),
            width: 5,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            toY: 5,
            color: const Color(0xffFFD035),
            width: 5,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            toY: 9,
            color: const Color(0xffFFD035),
            width: 5,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(
            toY: 7,
            color: const Color(0xffFFD035),
            width: 5,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
    ];
  }
}

// firabase şekli ile tasarım
/*
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardCard extends StatefulWidget {
  final String title;
  final IconData icon;
  final String data;
  final Color color;
  final Color textColor;

  DashboardCard({
    required this.title,
    required this.icon,
    required this.data,
    required this.color,
    this.textColor = Colors.white,
  });

  @override
  _DashboardCardState createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  List<double> barValues = [0, 0, 0, 0, 0]; // Başlangıç değeri

  @override
  void initState() {
    super.initState();
    _fetchDataFromFirebase();
  }

  Future<void> _fetchDataFromFirebase() async {
    try {
      final doc = await FirebaseFirestore.instance.collection('your_collection').doc('your_document').get();

      if (doc.exists) {
        // Firestore'daki veri sırasıyla Mart, Nisan, Mayıs, Haziran ve Temmuz ayları için değerler içeriyor.
        setState(() {
          barValues = [
            doc['Mar']?.toDouble() ?? 0,
            doc['Apr']?.toDouble() ?? 0,
            doc['May']?.toDouble() ?? 0,
            doc['Jun']?.toDouble() ?? 0,
            doc['Jul']?.toDouble() ?? 0,
          ];
        });
      }
    } catch (e) {
      print("Veri çekme hatası: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
      width: (w - 64) / 2,
      height: (w - 64) / 2,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: widget.color,
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SvgPicture.asset(
                IconService.down, // Mevcut simgeyi koruyoruz
                width: 18,
                height: 18,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 10,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        const style = TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        );
                        switch (value.toInt()) {
                          case 0:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('Mar', style: style),
                            );
                          case 1:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('Apr', style: style),
                            );
                          case 2:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('May', style: style),
                            );
                          case 3:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('Jun', style: style),
                            );
                          case 4:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('Jul', style: style),
                            );
                          default:
                            return const Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text('', style: style),
                            );
                        }
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: _buildBarChartData(),
                gridData: const FlGridData(show: false),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _buildBarChartData() {
    return List.generate(barValues.length, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: barValues[index],
            color: const Color(0xffFFD035),
            width: 5,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      );
    });
  }
}

*/