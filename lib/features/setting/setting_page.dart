import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPage();
}

class _SettingPage extends State<SettingPage> {
  bool notifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// HEADER
              Row(
                children: [
                  const Icon(Icons.menu, size: 28),

                  const Spacer(),

                  const Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const Spacer(),

                  Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      color: AppColors.darkGreen,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
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

              const SizedBox(height: 30),

              /// PROFILE CARD
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.darkGreen,
                      AppColors.lightGreen,
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Positioned(
                          right: 4,
                          bottom: 4,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: AppColors.online,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 18),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rebecca\nBarbara",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            "rebecca@smarthome.io",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              const Text(
                "ACCOUNT",
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 14),

              /// ACCOUNT CARD
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    buildTile(
                      Icons.person_outline,
                      "Edit Profile",
                      "Rebecca Barbara",
                    ),

                    const Divider(height: 1),

                    buildTile(
                      Icons.visibility_outlined,
                      "Privacy",
                      "Manage your data",
                    ),

                    const Divider(height: 1),

                    buildTile(
                      Icons.shield_outlined,
                      "Security",
                      "Password - 2FA enabled",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "PREFERENCES",
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 14),

              /// PREFERENCES CARD
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    SwitchListTile(
                      secondary:
                          const Icon(Icons.notifications_none_outlined),
                      title: const Text("Notifications"),
                      subtitle: const Text("Alerts & reminders"),
                      value: notifications,
                      onChanged: (value) {
                        setState(() {
                          notifications = value;
                        });
                      },
                    ),

                    const Divider(height: 1),

                    SwitchListTile(
                      secondary:
                          const Icon(Icons.dark_mode_outlined),
                      title: const Text("Dark Mode"),
                      subtitle: const Text("Switch appearance"),
                      value: darkMode,
                      onChanged: (value) {
                        setState(() {
                          darkMode = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTile(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
    );
  }
}