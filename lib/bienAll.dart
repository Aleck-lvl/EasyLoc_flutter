import 'package:flutter/material.dart'; 
import 'bdd.dart';
import 'voirPlus.dart';

class BienAll extends StatelessWidget
{
  BienAll({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context){
  //   return Scaffold(
  //     body: FutureBuilder(
  //       future: BddController().getData(),
  //       builder: (context, AsyncSnapshot<List<dynamic>> snapshot){

  //          return ListView.builder(
  //           itemBuilder: (context, item) {
  //             return Container(
  //               margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(20.0),
  //                 color: Colors.blueGrey[100],
  //               ),
  //               padding: const EdgeInsets.all(10.0),
  //               child: Column(
  //                 children: <Widget>[
  //                   Row(
  //                     children: <Widget>[
  //                       Expanded(
  //                         flex: 3,
  //                         child: Text(
  //                           (snapshot.data[item]['nom_bien']).substring(0,10),
  //                         ),
  //                       ),
  //                       Text((snapshot.data[item]['rue_bien']).substring(11,16)),
  //                     ],
  //                   ),
  //                   Row(
  //                     children: <Widget>[
  //                       Text(snapshot.data[item]['descriptif'] + ''),
  //                       Text(
  //                         snapshot.data[item]['ref_bien'],
  //                         style: TextStyle(fontWeight: FontWeight.bold),
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             );
  //           }
  //          );
  //       }
  //     ),
  //   );
  // }

 final List bienItems = [
  {
    "pseudo": 'maison1',
    "photo": 'assets/images/1.jpeg',
    "description": 'Test de description des biens',
  },
   {
    "pseudo": 'maison2',
    "photo": 'assets/images/2.jpg',
    "description": 'Test de description des biens',
  },
   {
    "pseudo": 'maison3',
    "photo": 'assets/images/2.jpg',
    "description": 'Test de description des biens',
  },
   {
    "pseudo": 'maison4',
    "photo": 'assets/images/2.jpg',
    "description": 'Test de description des biens',
  },
   {
    "pseudo": 'maison5',
    "photo": 'assets/images/2.jpg',
    "description": 'Test de description des biens',
  },
   {
    "pseudo": 'maison6',
    "photo": 'assets/images/2.jpg',
    "description": 'Test de description des biens',
  },
   {
    "pseudo": 'maison7',
    "photo": 'assets/images/2.jpg',
    "description": 'Test de description des biens',
  },
 ];
 
 @override
 Widget build(BuildContext context)
 {
  return Column(
    children: bienItems.map((bien) {
      return Column(
        children: [
          Container(
            height: 50,
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const SizedBox(width: 180),
                Text(
                  bien['pseudo'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bien['photo']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message_outlined),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          bien['description'],
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),    
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Voir plus'),
            ),
        ],
      );
    }).toList(),
  );
 }
}

