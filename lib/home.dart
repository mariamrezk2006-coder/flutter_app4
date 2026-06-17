
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor:Color.fromARGB(255, 7, 210, 255),
//         title: Text("login page"),
    
//       ),
//       body: Center(
//      child:Column(
//       children: [
//         Text("Flutter",style: TextStyle(fontSize:65,fontWeight: FontWeight.bold ),),
//         // TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
//     TextField( 
//       decoration: InputDecoration(
    
//         hintStyle:TextStyle(
//           color:  Color.fromARGB(255, 153, 36, 132),
//           fontSize: 18,
//         ),
//         labelText: "password",
//         hintText: "Enter your password",
//         prefixIcon: Icon(Icons.password),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
//         ), ),  
//     TextField( 
//       decoration: InputDecoration(
    
//         hintStyle:TextStyle(
//           color:  Color.fromARGB(255, 153, 36, 132),
//           fontSize: 18,
//         ),
//         labelText: "Email",
//         hintText: "Enter your Email",
//         prefixIcon: Icon(Icons.email),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
//         ), ), 
        
//              ElevatedButton(onPressed:(){}, child:Text("Login"),
//              style:ElevatedButton.styleFrom(backgroundColor:Colors.white) ),
//     ]
//      )
        
//       ),
//       bottomNavigationBar: BottomNavigationBar(items: const[
//         BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home " ),
//          BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search " ),
//          BottomNavigationBarItem(icon: Icon(Icons.person),label:"person" ),
//       ])
//     );
//   }
// }