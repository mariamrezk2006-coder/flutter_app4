import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';



class SmartHomeScreen extends StatefulWidget {
  const SmartHomeScreen({super.key});

  @override
  State<SmartHomeScreen> createState() => _SmartHomeScreenState();
}

class _SmartHomeScreenState extends State<SmartHomeScreen> {
  List<bool> isSelected = [
    true,
    true,
    false,
    true,
  ];

  final List<Map<String, dynamic>> devices = [
    {
      "icon": Icons.lightbulb_outline,
      "title": "Main Light",
      "subtitle": "On • 72%",
    },
    {
      "icon": Icons.thermostat,
      "title": "Thermostat",
      "subtitle": "22°C • Auto",
    },
    {
      "icon": Icons.air,
      "title": "AC Unit",
      "subtitle": "Off",
    },
    {
      "icon": Icons.lock_outline,
      "title": "Front Door",
      "subtitle": "Locked",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color:AppColors.primary,
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),

                const ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.lightGreen,
                    child: Text(
                      "RB",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(
                    "Rebecca",
                    style: TextStyle(
                      color:AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    "Barbara",
                    style: TextStyle(
                      color: AppColors.white70,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const ListTile(
                    leading:
                        Icon(Icons.home, color: Colors.white),
                    title: Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const ListTile(
                  leading:
                      Icon(Icons.person, color: Colors.white),
                  title: Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                const ListTile(
                  leading: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Notifications",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                const ListTile(
                  leading:
                      Icon(Icons.bar_chart, color: Colors.white),
                  title: Text(
                    "Stats",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                const ListTile(
                  leading: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Schedule",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                ListTile(
  leading: const Icon(Icons.settings, color: Colors.white),
  title: const Text(
    "Settings",
    style: TextStyle(color: Colors.white),
  ),
  onTap: () {
    Navigator.pushNamed(context, '/settingpag');
  },
),
              ],
              
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            Scaffold.of(context)
                                .openDrawer();
                          },
                        );
                      },
                    ),
                    const Text(
                      "My Home",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 22,
                      backgroundColor:
                          AppColors.primary,
                      child: Text(
                        "RB",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Good evening, Rebecca",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You have 3 rooms active and 12 devices running right now.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.thermostat),
                        SizedBox(height: 10),
                        Text(
                          "22°C",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                        Text("Inside"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.wb_sunny_outlined),
                        SizedBox(height: 10),
                        Text(
                          "18°C",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                        Text("Outside"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.water_drop_outlined),
                        SizedBox(height: 10),
                        Text(
                          "58%",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                        Text("Humidity"),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Rooms",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                roomTile(image: 
                  "lib/core/assets/images/Image (Living Room).png",
                  title: "Living Room",
                  subtitle: "4 devices • 22°C",
                ),

                const SizedBox(height: 15),

                roomTile(image: 
                  "lib/core/assets/images/Image (Bedroom).png",
                  title: "Bedroom",
                  subtitle: "3 devices • 20°C",
                ),

                const SizedBox(height: 15),

                roomTile(
                  image:
                     "lib/core/assets/images/Image (Kitchen).png" ,
                  title: "Kitchen",
                  subtitle: "5 devices • 24°C",
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Devices",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color:
                            AppColors.cardColor,
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: AppColors.white,
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                GridView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(),
                  itemCount: devices.length,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: .9,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      borderRadius:
                          BorderRadius.circular(30),
                      onTap: () {
                        setState(() {
                          isSelected[index] =
                              !isSelected[index];
                        });
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: isSelected[index]
                              ? AppColors.primary
                              : AppColors.cardColor,
                          borderRadius:
                              BorderRadius.circular(
                                  30),
                        ),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.all(
                                      10),
                              decoration:
                                  BoxDecoration(
                                color: AppColors.white24,
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            15),
                              ),
                              child: Icon(
                                devices[index]
                                    ["icon"],
                                color:
                                    isSelected[index]
                                        ? AppColors.white
                                        : Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                              children: [
                                Text(
                                  devices[index]
                                      ["title"],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                    color:
                                        isSelected[
                                                index]
                                            ? Colors
                                                .white
                                            : const Color.fromARGB(255, 133, 66, 66),
                                  ),
                                ),
                                const SizedBox(
                                    height: 5),
                                Text(
                                  devices[index]
                                      ["subtitle"],
                                  style: TextStyle(
                                    color:
                                        isSelected[
                                                index]
                                            ? AppColors.white70
                                            : AppColors.grey,
                                  ),
                                ),
                              ],
                            ),

                            Align(
                              alignment:
                                  Alignment.bottomRight,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration:
                                    BoxDecoration(
                                  shape:
                                      BoxShape.circle,
                                  color:
                                      isSelected[
                                              index]
                                          ? Colors
                                              .white
                                          : Colors
                                              .grey
                                              .shade300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget roomTile({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing:
            const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}