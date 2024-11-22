import 'package:flutter/material.dart';
import 'package:finance/ui/auth/widgets/button_widget.dart';

class SelectStatusPage extends StatefulWidget {
  @override
  _SelectStatusPageState createState() => _SelectStatusPageState();
}

class _SelectStatusPageState extends State<SelectStatusPage> {
  String? selectedStatus = 'Company'; // Varsayılan olarak "Company" seçili

  final List<Map<String, dynamic>> employmentOptions = [
    {
      'title': 'Driver',
      'description': 'I am a driver',
      'image': 'assets/images/driver.png'
    },
    {
      'title': 'Company',
      'description': 'I am a businessman',
      'image': 'assets/images/company.png'
    },
    {
      'title': 'Other',
      'description': 'I am a researcher',
      'image': 'assets/images/other.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "What’s your current employment status?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 48),
            Column(
              children: employmentOptions.map((option) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedStatus = option['title'];
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.only(bottom: 8),
                    height: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: selectedStatus == option['title']
                            ? const Color(0xff0369A1)
                            : Colors.white,
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                option['title']!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1F2937),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                option['description']!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff4B5563),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                              child: Image.asset(
                                option['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                            if (selectedStatus == option['title'])
                              const Positioned(
                                right: 16,
                                bottom: 34,
                                child: Icon(
                                  Icons.check_circle,
                                  color: Color(0xff0369A1),
                                  size: 20,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 58),
            ButtonWidget(
              text: "Continue",
              onPressed: () {
                // Devam butonu işlemleri
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
/////////////////////////////////////////////
/*
class SelectStatusPage extends StatefulWidget {
  @override
  _SelectStatusPageState createState() => _SelectStatusPageState();
}

class _SelectStatusPageState extends State<SelectStatusPage> {
  String? selectedStatus = 'Company'; // Varsayılan olarak "Company" seçili

  final List<Map<String, dynamic>> employmentOptions = [
    {
      'title': 'Driver',
      'description': 'I am a driver',
      'image': 'assets/images/driver.png'
    },
    {
      'title': 'Company',
      'description': 'I am a businessman',
      'image': 'assets/images/company.png'
    },
    {
      'title': 'Other',
      'description': 'I am a researcher',
      'image': 'assets/images/other.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PageHeader(text: "What’s your current employment status?"),
            const SizedBox(height: 48),
            EmploymentOptionsList(
              options: employmentOptions,
              selectedStatus: selectedStatus,
              onSelected: (status) {
                setState(() {
                  selectedStatus = status;
                });
              },
            ),
            const SizedBox(height: 58),
            ButtonWidget(
              text: "Continue",
              onPressed: () {
                // Devam butonu işlemleri
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  final String text;

  const PageHeader({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}

class EmploymentOptionCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const EmploymentOptionCard({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.only(bottom: 8),
        height: 88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? const Color(0xff0369A1) : Colors.white,
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1F2937),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff4B5563),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                if (isSelected)
                  const Positioned(
                    right: 16,
                    bottom: 34,
                    child: Icon(
                      Icons.check_circle,
                      color: Color(0xff0369A1),
                      size: 20,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EmploymentOptionsList extends StatelessWidget {
  final List<Map<String, dynamic>> options;
  final String? selectedStatus;
  final ValueChanged<String> onSelected;

  const EmploymentOptionsList({
    required this.options,
    required this.selectedStatus,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: options.map((option) {
        return EmploymentOptionCard(
          title: option['title'],
          description: option['description'],
          imagePath: option['image'],
          isSelected: selectedStatus == option['title'],
          onTap: () => onSelected(option['title']),
        );
      }).toList(),
    );
  }
}
*/
