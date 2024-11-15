import 'package:flutter/material.dart';

class CardList2Description extends StatelessWidget {
  final String description;
  
  const CardList2Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(description),
    );
  }
}