import 'package:flutter/material.dart';

import 'features/auth/sign_in_screen.dart';
import 'features/auth/sign_up_screen.dart';
import 'features/home/smart_home_screen.dart';
import 'features/home/home_screen.dart';
import 'features/profile/profile_screen.dart';
import 'features/setting/setting_page.dart';
import 'features/calendar/calendar_screen.dart';

void main() {
  runApp(const SmartHomeApp());
}

class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home',

      initialRoute: '/signin',

      routes: {
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/smartHome': (context) => const SmartHomeScreen(),
        
      
      
      
      },
    );
  }
}