import 'package:flutter/material.dart';
import 'package:practica/widgets/widgets_list2/card_list2_description.dart';
import 'package:practica/widgets/widgets_list2/card_list2_image.dart';

class CharacterScreen extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  
  const CharacterScreen({super.key, required this.title, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title)
        ),
      ),

      body: Column(
        children: [
          CardList2Image(image: image),
          CardList2Description(description: description),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}