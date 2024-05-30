import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class ThirdScreen extends StatelessWidget {
   const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text('Réservation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                hintText: "Votre nom",
                labelText: "Nom",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                hintText: "Votre prénom",
                labelText: "Prénom",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                hintText: "Date début",
                labelText: "Date d'arrivée",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                hintText: "Date fin",
                labelText: "Date de fin",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Valider la réservation')
              ),
            )
          ],
        ),
      ),
    );
  }
}