// import 'package:flutter/material.dart';

// class Profil extends StatelessWidget {
//  // const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Profile",
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.deepPurple,
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [

//             const SizedBox(height: 20),

//             const CircleAvatar(
//               radius: 50,
//               backgroundImage: NetworkImage(
//                 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
//               ),
//             ),

//             const SizedBox(height: 15),

//             const Text(
//               "mariam Rezk",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 5),

//             const Text(
//               "rezksshafik@gmail.com",
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 16,
//               ),
//             ),

//             const SizedBox(height: 30),

//             Card(
//               elevation: 4,
//               child: Column(
//                 children: [

//                   ListTile(
//                     leading: const Icon(
//                       Icons.person,
//                       color: Colors.deepPurple,
//                     ),
//                     title: const Text("Personal Info"),
//                     subtitle: const Text(
//                       "View and edit your personal details",
//                     ),
//                     trailing: const Icon(
//                       Icons.chevron_right,
//                     ),
//                   ),

//                   const Divider(),

//                   ListTile(
//                     leading: const Icon(
//                       Icons.school,
//                       color: Colors.blue,
//                     ),
//                     title: const Text("Education"),
//                     subtitle: const Text(
//                       "View your education details",
//                     ),
//                     trailing: const Icon(
//                       Icons.chevron_right,
//                     ),
//                   ),

//                   const Divider(),

//                   ListTile(
//                     leading: const Icon(
//                       Icons.bar_chart,
//                       color: Colors.green,
//                     ),
//                     title: const Text("Progress"),
//                     subtitle: const Text(
//                       "Check your learning progress",
//                     ),
//                     trailing: const Icon(
//                       Icons.chevron_right,
//                     ),
//                   ),

//                   const Divider(),

//                   ListTile(
//                     leading: const Icon(
//                       Icons.settings,
//                       color: Colors.orange,
//                     ),
//                     title: const Text("Settings"),
//                     subtitle: const Text(
//                       "App preferences and settings",
//                     ),
//                     trailing: const Icon(
//                       Icons.chevron_right,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 25),

//             SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: ElevatedButton.icon(
//                 onPressed: () {},

//                 icon: const Icon(Icons.logout),

//                 label: const Text("Logout"),

//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   foregroundColor: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }