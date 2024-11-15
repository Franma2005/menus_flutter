import 'package:flutter/material.dart';

class CustmosCardTipo2 extends StatelessWidget {
  final String imageUrl;
  final String? pieImagen;
  
  const CustmosCardTipo2({super.key, required this.imageUrl, this.pieImagen});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage("assets/amalie-steiness.gif"),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 3000),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(pieImagen ?? "")
          ),
        ],
      ),
      );
  }
}