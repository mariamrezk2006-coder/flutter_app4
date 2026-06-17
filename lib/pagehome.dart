import 'package:flutter/material.dart';

class Pagehome extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(213, 255, 86, 77),
         centerTitle: true,
        title: const Text("Home"),
        leading:  IconButton(
    icon: Icon(Icons.menu),
    onPressed: () {
      print("Menu Pressed");
    },
  ),
  actions: [
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {
        print("Notification Pressed");
      },
    ),
  ],
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi meme!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(width: 100),

                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/3135/3135789.png',
                  height: 80,
                  width: 80,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Quick Actions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.menu_book, color: const Color.fromARGB(255, 34, 116, 164)),
                        Text("Courses"),
                      ],
                    ),
                  ),
                ),

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.bar_chart, color: Colors.green),
                        Text("Progress"),
                      ],
                    ),
                  ),
                ),

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(Icons.calendar_month, color: Colors.orange),
                        Text("Schedule"),
                      ],
                    ),
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