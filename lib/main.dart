import 'package:flutter/material.dart';
import 'recommandation.dart';
import 'bienAll.dart';
import 'recherche.dart';
import 'favorite.dart';
import 'profil.dart';
import 'bdd.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';



/// Flutter code sample for [AbsorbPointer].

void main()
{
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget
// {
//  const MyApp({Key? key}) : super(key: key);
 
//  @override
//  Widget build(BuildContext context)
//  {
//   int myCurrentIndex = 0;
//   List pages = const[
//     MyApp(),
//     Favorite(),
//     ProfileScreen(),
//   ];
//   return MaterialApp(
//     title: 'EasyLoc',
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text('EasyLoc',),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Reco(),
//             BienAll(),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey.shade700,
//         type: BottomNavigationBarType.fixed, 
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home), 
//             label: 'Accueil',
//             ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search), 
//             label: 'Rechercher', 
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border), 
//             label: 'Favories',
//             ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline), 
//             label: 'Profil',
//             ),
//         ],
//       ),
//     ),
//   );
//  }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
      title: 'EasyLoc',
      debugShowCheckedModeBanner: false,
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color.fromARGB(118, 97, 135, 218),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.search)),
            label: 'Rechercher',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.person_outline),
            ),
            label: 'Profil',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Card(
          child: Column(
          children: [
            Reco(),
            BienAll(),
          ],
        ),
        ),

        /// Notifications page
        const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Rechercher un bien',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
        ),

        /// Messages page
        Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user.JPG'),
            ),
            const SizedBox(height: 20),
            itemProfile('Nom', 'Aleck Lavrilleux', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Téléphone', '0628334488', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Adresse', '3 impasse Martial Brigouleix 19600 Saint Pantaleon de Larche', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile('Email', 'aleck.lavrilleux@gmail.com', CupertinoIcons.mail),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Modifier le profil')
              ),
            )
          ],
        ),
      ),
      ][currentPageIndex],
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Color.fromARGB(255, 0, 102, 255).withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}



