import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Componentes de Flutter")),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.three_g_mobiledata_outlined),
                  title: const Text("NOMBRE DE RUTA"),
                  onTap: () {
                    Navigator.pushNamed(context, 'paquet');

                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 5));
  }
}
