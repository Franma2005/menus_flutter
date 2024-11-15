import 'package:flutter/material.dart';
import 'package:practica/theme/app_theme.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text("Título de la tarjeta"),
            subtitle: Text("Minim minim consectetur do quis dolor sit Lorem cillum eiusmod nostrud proident nulla proident. Cillum ipsum aliquip deserunt sunt dolor dolore. Qui aliqua id aute veniam ea dolore incididunt proident exercitation. Proident aliquip do eiusmod cupidatat nulla exercitation laboris."),
          ),
          Row(
            children: [
              TextButton(
              onPressed: () {},
              child: const Text("Cancelar"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                onPressed: () {},
                child: const Text("Aceptar"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  }