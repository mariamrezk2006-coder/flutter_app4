import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          IconButton(onPressed: null, 
          icon: Icon(Icons.person,
          color: Colors.blue),)
        ],
      ),
drawer: Drawer(

  
),
body:Container(
  padding: EdgeInsets.symmetric(horizontal: 22,vertical: 16),
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),

  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Wednesday, june 20",
        style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),

  ),
   SizedBox(height: 4),
   Text(
    'Good evening , Rebecca',
    style: TextStyle(fontSize:13,
    fontWeight: FontWeight.bold),
   ),
   
    ],
  ),
)
 

    );
  }
}