import 'package:flutter/material.dart';



class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F7F3),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Analytics",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Color(0xff4D8C76),
              child: Text("RB"),
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

              const Text(
                "This week",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Energy Usage",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25),

              // Green Card

              Container(
                padding: const EdgeInsets.all(20),
                height: 280,
                decoration: BoxDecoration(
                  color: const Color(0xff2F564A),
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "Total this month",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),

                    const SizedBox(height: 15),

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
                        vertical: 8,
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

                    const Spacer(),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        chartBar(25),
                        chartBar(40),
                        chartBar(30),
                        chartBar(55),
                        chartBar(35),
                        chartBar(50),
                        chartBar(28),
                        chartBar(60),
                        chartBar(45),
                        chartBar(35),
                        chartBar(52),
                        chartBar(
                          58,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Daily Breakdown",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              dayRow("Mon", 0.55, "5.2"),
              dayRow("Tue", 0.72, "6.8"),
              dayRow("Wed", 0.76, "7.1"),
              dayRow("Thu", 0.50, "4.9"),
              dayRow("Fri", 0.68, "6.3"),
              dayRow("Sat", 0.90, "8.1"),
              dayRow("Sun", 0.58, "5.5"),

              const SizedBox(height: 30),

              const Text(
                "Top Consumers",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              consumerCard(
                Icons.ac_unit,
                "AC Unit",
                "Bedroom",
                "12.4 kWh",
                0.92,
              ),

              consumerCard(
                Icons.power_settings_new,
                "Refrigerator",
                "Kitchen",
                "9.8 kWh",
                0.74,
              ),

              consumerCard(
                Icons.lightbulb_outline,
                "Lighting",
                "All rooms",
                "7.2 kWh",
                0.58,
              ),

              consumerCard(
                Icons.thermostat,
                "Thermostat",
                "Living Room",
                "5.1 kWh",
                0.40,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "",
          ),
        ],
      ),
    );
  }

  static Widget chartBar(
    double height, {
    Color color = const Color(0xff80978E),
  }) {
    return Container(
      width: 18,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  static Widget dayRow(
    String day,
    double value,
    String amount,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),

      child: Row(
        children: [

          SizedBox(
            width: 40,
            child: Text(day),
          ),

          Expanded(
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              borderRadius: BorderRadius.circular(20),
              backgroundColor: Colors.grey.shade200,
              valueColor:
                  const AlwaysStoppedAnimation(
                    Color(0xff4D8C76),
                  ),
            ),
          ),

          const SizedBox(width: 15),

          SizedBox(
            width: 60,
            child: Text(
              "$amount kWh",
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  static Widget consumerCard(
    IconData icon,
    String title,
    String room,
    String usage,
    double progress,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [

          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              icon,
              color: const Color(0xff4D8C76),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    Text(
                      usage,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                LinearProgressIndicator(
                  value: progress,
                  minHeight: 6,
                  borderRadius:
                      BorderRadius.circular(20),
                  backgroundColor:
                      Colors.grey.shade200,
                  valueColor:
                      const AlwaysStoppedAnimation(
                    Color(0xff4D8C76),
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  room,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}