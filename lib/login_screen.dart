// import 'package:flutter/material.dart';


// class loginScreen extends StatelessWidget {
//   //const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar:appBar() as PreferredSizeWidget?,
//       body: Center(
       
//         child: Column(
         
// mainAxisAlignment:MainAxisAlignment.center,
//            children: appButton,
//         ),
//       ),
//     );
//   }
// ////////////////functions///////////////////////
//   List<Widget> get appButton {
//     return [
//           GestureDetector(
//             onTap: null,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius:BorderRadius.circular(12),
//               ),
//               height: 50,
//               width: 360,
//               child: const Center(child: Text("Go to ListViewTest")),
//             ),
//           )  
//         ];
//   }
//   ////////////////////////////functions///////////////////////
//   Widget appBar() {
//     return AppBar(
//       //backgroundColor: AppColors.backgroungColor,
//       title: Text(
//         'My Home',
//         style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
//       ),
//       centerTitle: true,
//       actions: [
//         Container(
//           padding: const EdgeInsets.all(1),
//           margin: const EdgeInsets.all(12),
//           child: CircleAvatar(
//             backgroundColor: Colors.green,
//             child: Text(
//               'JS',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }


// }