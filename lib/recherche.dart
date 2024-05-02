// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'barreRecherche.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: InkWell(
//           onTap: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
//           },
//           child: Container(
//             height: 35,
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Colors.blue,
//                 width: 1.4,
//               ),
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: const [
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Icon(
//                         Icons.search,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     Text(
//                       'Rechercher un bien',
//                       style: TextStyle(
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey.shade700,
//         type: BottomNavigationBarType.fixed, 
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Rechercher'),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favories'),
//           BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profil'),
//         ],
//       ),
//     );
//   }
// }