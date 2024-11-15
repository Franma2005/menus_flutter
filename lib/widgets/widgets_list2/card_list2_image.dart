import 'package:flutter/material.dart';

class CardList2Image extends StatelessWidget {
  final String image;
  
  const CardList2Image({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(image),
            placeholder: const AssetImage("assets/amalie-steiness.gif"),
          )
        ],
      ),
    );
  }
}