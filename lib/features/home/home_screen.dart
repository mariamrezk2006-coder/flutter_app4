import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.background,

      // Drawer
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primary,
              ),
              child: Center(
                child: Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),

          children: [

            /// AppBar Custom
            Row(
              children: [

                Builder(
                  builder: (context) => Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ),
                ),

                const Spacer(),

                const Text(
                  "My Home",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Spacer(),

                const CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.primary,
                  child: Text(
                    "RB",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            const Text(
              "Wednesday, June 20",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 15),

            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Good evening, ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Rebecca",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "You have 3 rooms active and 12 devices running right now.",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 30),

            /// Weather Cards

            Row(
              children: [

                Expanded(
                  child: weatherCard(
                    Icons.thermostat,
                    "22°C",
                    "Inside",
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: weatherCard(
                    Icons.sunny,
                    "18°C",
                    "Outside",
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: weatherCard(
                    Icons.water_drop,
                    "58%",
                    "Humidity",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Row(
              children: const [

                Text(
                  "Rooms",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Spacer(),

                Text(
                  "See all",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            roomCard(
              "assets/images/Image (Living Room).png",
              "Living Room",
              "4 devices · 22°C",
            ),

            roomCard(
              "assets/images/Image (Bedroom).png",
              "Bedroom",
              "3 devices · 20°C",
            ),

            roomCard(
              "assets/images/Image (Kitchen).png",
              "Kitchen",
              "5 devices · 24°C",
            ),

            const SizedBox(height: 20),

            const Text(
              "Devices",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 80),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 69, 99, 86),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        selectedItemColor: AppColors.primary,

        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType.fixed,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Stats",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }

  Widget weatherCard(
      IconData icon,
      String temp,
      String title,
      ) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [

          Icon(icon),

          SizedBox(height: 10),

          Text(
            temp,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 5),

          Text(title),
        ],
      ),
    );
  }

  Widget roomCard(
      String image,
      String title,
      String subTitle,
      ) {
    return GestureDetector(
      onTap: () {
        print(title);
      },

      child: Container(
        margin: const EdgeInsets.only(bottom: 12),

        padding: const EdgeInsets.all(15),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),

        child: Row(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(15),

              child: Image.asset(
                image,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  subTitle,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const Spacer(),

            const Icon(
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
    );
  }
}