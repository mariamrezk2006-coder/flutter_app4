import 'package:flutter/material.dart';

class Pagehome extends StatelessWidget{


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(212, 195, 100, 210),
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
      body:Padding(
        padding:EdgeInsets.all(16) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
Text(
                  "Hello, Rahul!",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),
                Text("Keep Learning and achieve your goals.",
                style:TextStyle(
                 fontSize: 16,
                 color: const Color.fromARGB(224, 110, 107, 107),

                ),
                ),
                  ],
                ),
                
                SizedBox(width: 30),
              
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/3135/3135789.png',
                  height: 80,
                  width: 80,
                ),
              ],
            ),
            SizedBox(height: 20),
            Align( alignment:Alignment.centerLeft,
              child:Text(
              "Quick Actions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
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
                        Icon(Icons.menu_book, color: const Color.fromARGB(255, 112, 34, 164)),
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
                        Icon(Icons.calendar_month, color: const Color.fromARGB(255, 212, 95, 5)),
                        Text("Schedule"),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          
        SizedBox(height: 8),

Text(
  "Continue Learning",
  style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
),

SizedBox(height: 8),
Card(
  color: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  child: Padding(
    padding: EdgeInsets.all(16),

    child: Row(
      children: [

        
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.purple.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            Icons.library_books,
            color: Colors.purple,
            size: 30,
          ),
        ),

        SizedBox(width: 12),

      
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Flutter Basics",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 5),

              Text(
                "Introduction to Flutter",
                style: TextStyle(color: Colors.black54),
              ),

              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child:LinearProgressIndicator(
                value: 0.6,
                backgroundColor: Colors.grey.shade200,
                color: Colors.purple,)
                  ),
                SizedBox(width: 10),
               Text("60%",
               style: TextStyle(fontWeight: FontWeight.bold),
               ),
                ],
              )

            
            ],
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(height: 20),

            Text(
              "Upcoming",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_month, color: Colors.green),
                title: Text("Dart Programming"),
                
                subtitle: Text("May 20, 2024 • 10:00 AM"),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromARGB(212, 195, 100, 210),
        unselectedItemColor: Colors.black54,
        unselectedLabelStyle: TextStyle(
          fontWeight:FontWeight.bold
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Progress",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            
          ),
        ],
      ),
    );


  
          
  }
}