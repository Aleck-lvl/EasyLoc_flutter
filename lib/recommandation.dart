import 'package:flutter/material.dart';

class Reco extends StatelessWidget
{
  Reco({Key? key}) : super(key: key);

 final List recoItems = [
  {
    "pseudo": "maison1",
    "photo": "assets/images/1.jpeg",
  },
  {
    "pseudo": "maison2",
    "photo": "assets/images/2.jpg",
  },
  {
    "pseudo": "maison3",
    "photo": "assets/images/2.jpg",
  },
  {
    "pseudo": "maison4",
    "photo": "assets/images/2.jpg",
  },
 ];
 
 @override
 Widget build(BuildContext context)
 {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: recoItems.map((reco){
        return Container(
          height: 200,
          width: 200,
          color: reco['colors'],
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 85,
                backgroundImage: AssetImage(reco['photo']),
                ),
                const SizedBox(height: 10),
              Text(reco['pseudo']),
            ],
          ),
        );
      }).toList(),
    ),
  );
 }
}