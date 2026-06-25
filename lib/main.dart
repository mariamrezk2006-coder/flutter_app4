import 'package:flutter/material.dart';
import 'package:flutter_application_2/calender_screen.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/features/home/home_screen.dart';
import 'package:flutter_application_2/features/auth/login_screen.dart';
import 'package:flutter_application_2/profile_screen.dart';
import 'package:flutter_application_2/setting_page.dart';
import 'package:flutter_application_2/smart_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => CalenderScreen(),
        // '77': (context) => SettingPage(),
      },
      // theme: ,
      debugShowCheckedModeBanner: false,
      //
      // home :LoginScreen()
    );
  }
}
