import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/auth/app_colors.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  centerTitle: true,

  leading: IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.menu,
      color: Colors.black,
    ),
  ),

  title: Text(
    "Analytics",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  ),

  actions: [
    Padding(
      padding: EdgeInsets.only(right: 15),

      child: CircleAvatar(
        radius: 20,
        backgroundColor: Color(0xff8EA28F),

        child: Text(
          "RB",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ],
),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inofAndTowText(),
              const SizedBox(height: 20),
              greenConiner(),
              const SizedBox(height: 30),
              weekWidget(),
            ],
          ),
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////

  Widget inofAndTowText() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "This week",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Energy Usage",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  ////////////////////////////////////////////////////

  Widget greenConiner() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff26463C),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "Total this month",
              style: TextStyle(color: Colors.white),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "48.2 kWh",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "↓ 12% vs last month",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////

  Widget weekWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Daily Breakdown",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        dayRow("Mon", 5.2, 0.60),
        dayRow("Tue", 6.8, 0.80),
        dayRow("Wed", 7.1, 0.85),
        dayRow("Thu", 4.9, 0.55),
        dayRow("Fri", 6.3, 0.75),
        dayRow("Sat", 8.1, 1.00),
        dayRow("Sun", 5.5, 0.65),
      ],
    );
  }

  ////////////////////////////////////////////////////

  Widget dayRow(
    String day,
    double value,
    double widthFactor,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(day),
          ),

          Expanded(
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: widthFactor,
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: const Color(0xff26463C),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          const SizedBox(width: 15),

          SizedBox(
            width: 55,
            child: Text(
              "$value\nkWh",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}