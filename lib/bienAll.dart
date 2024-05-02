import 'package:flutter/material.dart';

class BienAll extends StatelessWidget
{
  BienAll({Key? key}) : super(key: key);

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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Voir plus')
              ),
            )
        ],
      );
    }).toList(),
  );
 }
}