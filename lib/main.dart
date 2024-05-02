import 'package:flutter/material.dart';
import 'recommandation.dart';
import 'bienAll.dart';

/// Flutter code sample for [AbsorbPointer].

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
 const MyApp({Key? key}) : super(key: key);
 
 @override
 Widget build(BuildContext context)
 {
  return MaterialApp(
    title: 'EasyLoc',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('EasyLoc',),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Reco(),
            BienAll(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade700,
        type: BottomNavigationBarType.fixed, 
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Rechercher'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favories'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profil'),
        ],
      ),
    ),
  );
 }
}


