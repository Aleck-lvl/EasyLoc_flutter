import 'package:flutter/material.dart';
import 'reservation.dart';

class SecondScreen extends StatelessWidget {
   const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text('Description de la maison 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          children: [
            const SizedBox(height: 20),
            
            
            const SizedBox(height: 20),
            Text(
              'Nom du bien : test'
            ),
            const SizedBox(height: 20),
            Text(
              'Rue du bien : 3 impasse Martial Brigouleix'
            ),
            const SizedBox(height: 20),
            Text(
              'Commune du bien : '
            ),
            const SizedBox(height: 20),
            Text(
              'Superficie du bien : 202 m2'
            ),
            const SizedBox(height: 20),
            Text(
              'Nombre de couchage : 2'
            ),
            const SizedBox(height: 20),
            Text(
              'Nombre de pièces : 2'
            ),
            const SizedBox(height: 20),
            Text(
              'Nombre de chambres : 2'
            ),
            const SizedBox(height: 20),
            Text(
              'Descriptif : Maison calme au bord de la mer.'
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                );
              },
              child: Text('Réserver'),
            ),
          ],
        ),
      ),
    );
  }
}